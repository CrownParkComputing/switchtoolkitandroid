#!/bin/bash

#############################################
# Switch Toolkit Android - Release Updater
# Copies latest APK and pushes to GitHub
#############################################

set -e  # Exit on error

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Configuration
SOURCE_DIR="/home/jon/SwitchToolkit/src/SwitchToolkit/bin/Release/net9.0-android35.0"
APK_FILE="com.switchtoolkit.mobile-Signed.apk"
RELEASE_DIR="/home/jon/switchtoolkitandroid/releases"
REPO_DIR="/home/jon/switchtoolkitandroid"

# Version file to track releases
VERSION_FILE="$REPO_DIR/VERSION.txt"

echo -e "${BLUE}================================${NC}"
echo -e "${BLUE}Switch Toolkit Release Updater${NC}"
echo -e "${BLUE}================================${NC}"
echo ""

# Check if source APK exists
if [ ! -f "$SOURCE_DIR/$APK_FILE" ]; then
    echo -e "${RED}❌ Error: APK not found at $SOURCE_DIR/$APK_FILE${NC}"
    echo -e "${YELLOW}💡 Tip: Build the project first with: cd /home/jon/SwitchToolkit && dotnet build -c Release${NC}"
    exit 1
fi

echo -e "${GREEN}✓${NC} Found APK: $SOURCE_DIR/$APK_FILE"

# Get APK file info
APK_SIZE=$(du -h "$SOURCE_DIR/$APK_FILE" | cut -f1)
APK_DATE=$(date -r "$SOURCE_DIR/$APK_FILE" "+%Y-%m-%d %H:%M:%S")
APK_HASH=$(sha256sum "$SOURCE_DIR/$APK_FILE" | cut -d' ' -f1)

echo -e "${GREEN}✓${NC} APK Size: $APK_SIZE"
echo -e "${GREEN}✓${NC} Build Date: $APK_DATE"
echo -e "${GREEN}✓${NC} SHA256: ${APK_HASH:0:16}..."
echo ""

# Prompt for version number
if [ -f "$VERSION_FILE" ]; then
    CURRENT_VERSION=$(cat "$VERSION_FILE")
    echo -e "${BLUE}Current version: $CURRENT_VERSION${NC}"
else
    CURRENT_VERSION="0.0.0"
    echo -e "${YELLOW}No previous version found${NC}"
fi

echo -e "${YELLOW}Enter new version number (e.g., 1.0.0):${NC}"
read -r NEW_VERSION

if [ -z "$NEW_VERSION" ]; then
    echo -e "${RED}❌ Error: Version number cannot be empty${NC}"
    exit 1
fi

# Validate version format (basic)
if ! [[ "$NEW_VERSION" =~ ^[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
    echo -e "${RED}❌ Error: Invalid version format. Use x.y.z (e.g., 1.0.0)${NC}"
    exit 1
fi

echo ""
echo -e "${YELLOW}Enter release notes (or press Enter to skip):${NC}"
read -r RELEASE_NOTES

if [ -z "$RELEASE_NOTES" ]; then
    RELEASE_NOTES="Release version $NEW_VERSION"
fi

echo ""
echo -e "${BLUE}================================${NC}"
echo -e "${BLUE}Release Summary${NC}"
echo -e "${BLUE}================================${NC}"
echo -e "Version: ${GREEN}$NEW_VERSION${NC}"
echo -e "Notes: $RELEASE_NOTES"
echo -e "APK Size: $APK_SIZE"
echo -e "SHA256: $APK_HASH"
echo ""
echo -e "${YELLOW}Continue with release? (y/n):${NC}"
read -r CONFIRM

if [ "$CONFIRM" != "y" ] && [ "$CONFIRM" != "Y" ]; then
    echo -e "${YELLOW}Release cancelled${NC}"
    exit 0
fi

echo ""
echo -e "${BLUE}📦 Copying APK to releases directory...${NC}"

# Create versioned filename
VERSIONED_APK="SwitchToolkit-v${NEW_VERSION}.apk"
cp "$SOURCE_DIR/$APK_FILE" "$RELEASE_DIR/$VERSIONED_APK"

# Also copy as latest.apk for convenience
cp "$SOURCE_DIR/$APK_FILE" "$RELEASE_DIR/latest.apk"

echo -e "${GREEN}✓${NC} Copied to: $RELEASE_DIR/$VERSIONED_APK"
echo -e "${GREEN}✓${NC} Copied to: $RELEASE_DIR/latest.apk"

# Update VERSION.txt
echo "$NEW_VERSION" > "$VERSION_FILE"
echo -e "${GREEN}✓${NC} Updated VERSION.txt"

# Create/Update CHANGELOG.md
CHANGELOG_FILE="$REPO_DIR/CHANGELOG.md"
TEMP_CHANGELOG=$(mktemp)

{
    echo "# Changelog"
    echo ""
    echo "## [$NEW_VERSION] - $(date +%Y-%m-%d)"
    echo ""
    echo "$RELEASE_NOTES"
    echo ""
    echo "**Download**: [SwitchToolkit-v${NEW_VERSION}.apk](releases/SwitchToolkit-v${NEW_VERSION}.apk)"
    echo ""
    echo "**SHA256**: \`$APK_HASH\`"
    echo ""
    echo "---"
    echo ""
    
    # Append old changelog if it exists
    if [ -f "$CHANGELOG_FILE" ]; then
        tail -n +2 "$CHANGELOG_FILE"
    fi
} > "$TEMP_CHANGELOG"

mv "$TEMP_CHANGELOG" "$CHANGELOG_FILE"
echo -e "${GREEN}✓${NC} Updated CHANGELOG.md"

# Create release info JSON
RELEASE_JSON="$RELEASE_DIR/release-info-v${NEW_VERSION}.json"
cat > "$RELEASE_JSON" << EOF
{
  "version": "$NEW_VERSION",
  "releaseDate": "$(date -Iseconds)",
  "apkFile": "$VERSIONED_APK",
  "apkSize": "$(stat -f%z "$RELEASE_DIR/$VERSIONED_APK" 2>/dev/null || stat -c%s "$RELEASE_DIR/$VERSIONED_APK")",
  "sha256": "$APK_HASH",
  "releaseNotes": "$RELEASE_NOTES"
}
EOF
echo -e "${GREEN}✓${NC} Created release-info-v${NEW_VERSION}.json"

# Git operations
cd "$REPO_DIR"

echo ""
echo -e "${BLUE}📤 Pushing to GitHub...${NC}"

# Check if git repo is initialized
if [ ! -d .git ]; then
    echo -e "${YELLOW}Initializing git repository...${NC}"
    git init
    git branch -M master
    echo -e "${GREEN}✓${NC} Git repository initialized"
fi

# Add files
git add .
git commit -m "Release v$NEW_VERSION

$RELEASE_NOTES

- APK Size: $APK_SIZE
- SHA256: ${APK_HASH:0:16}...
- Build Date: $APK_DATE"

echo -e "${GREEN}✓${NC} Committed changes"

# Check if remote exists
if ! git remote | grep -q "origin"; then
    echo ""
    echo -e "${YELLOW}No remote repository configured.${NC}"
    echo -e "${YELLOW}Please enter the GitHub repository URL:${NC}"
    echo -e "${BLUE}Example: https://github.com/CrownParkComputing/switchtoolkitandroid.git${NC}"
    read -r REPO_URL
    
    if [ -n "$REPO_URL" ]; then
        git remote add origin "$REPO_URL"
        echo -e "${GREEN}✓${NC} Added remote: $REPO_URL"
    else
        echo -e "${RED}❌ Error: Repository URL cannot be empty${NC}"
        exit 1
    fi
fi

# Push to GitHub
echo ""
echo -e "${BLUE}Pushing to remote repository...${NC}"
git push -u origin master

echo -e "${GREEN}✓${NC} Pushed to GitHub"

echo ""
echo -e "${BLUE}================================${NC}"
echo -e "${GREEN}✅ Release Complete!${NC}"
echo -e "${BLUE}================================${NC}"
echo ""
echo -e "Version: ${GREEN}$NEW_VERSION${NC}"
echo -e "APK: $RELEASE_DIR/$VERSIONED_APK"
echo ""
echo -e "${YELLOW}📝 Next steps:${NC}"
echo -e "1. Go to GitHub repository: https://github.com/CrownParkComputing/switchtoolkitandroid"
echo -e "2. Create a new release:"
echo -e "   - Click 'Releases' → 'Draft a new release'"
echo -e "   - Tag: v$NEW_VERSION"
echo -e "   - Title: Switch Toolkit v$NEW_VERSION"
echo -e "   - Description: Copy from CHANGELOG.md"
echo -e "   - Upload: releases/$VERSIONED_APK"
echo -e "   - Publish release"
echo ""
echo -e "${BLUE}🎉 Users can now download from:${NC}"
echo -e "   https://github.com/CrownParkComputing/switchtoolkitandroid/releases/latest"
echo ""
