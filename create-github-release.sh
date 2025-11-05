#!/bin/bash

###############################################
# GitHub Release Creator
# Automatically creates GitHub release with APK
###############################################

set -e

GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

REPO_DIR="/home/jon/switchtoolkitandroid"
VERSION_FILE="$REPO_DIR/VERSION.txt"

cd "$REPO_DIR"

echo -e "${BLUE}================================${NC}"
echo -e "${BLUE}GitHub Release Creator${NC}"
echo -e "${BLUE}================================${NC}"
echo ""

# Check if gh is installed
if ! command -v gh &> /dev/null; then
    echo -e "${YELLOW}GitHub CLI (gh) is not installed.${NC}"
    echo ""
    echo "Install it with:"
    echo "  sudo apt install gh"
    echo "  or"
    echo "  brew install gh"
    echo ""
    echo "Then authenticate:"
    echo "  gh auth login"
    echo ""
    exit 1
fi

# Check if authenticated
if ! gh auth status &> /dev/null; then
    echo -e "${YELLOW}Not authenticated with GitHub CLI${NC}"
    echo ""
    echo "Authenticate now:"
    gh auth login
fi

echo -e "${GREEN}✓${NC} Authenticated with GitHub"

# Get version
if [ ! -f "$VERSION_FILE" ]; then
    echo -e "${RED}❌ Error: VERSION.txt not found${NC}"
    echo "Run ./update-release.sh first"
    exit 1
fi

VERSION=$(cat "$VERSION_FILE")
TAG="v${VERSION}"
APK_FILE="releases/SwitchToolkit-v${VERSION}.apk"
RELEASE_INFO="releases/release-info-v${VERSION}.json"

echo -e "${GREEN}✓${NC} Version: $VERSION"

# Check if APK exists
if [ ! -f "$APK_FILE" ]; then
    echo -e "${RED}❌ Error: APK not found: $APK_FILE${NC}"
    exit 1
fi

echo -e "${GREEN}✓${NC} APK found: $APK_FILE"

# Check if release already exists
if gh release view "$TAG" &> /dev/null; then
    echo -e "${YELLOW}⚠ Release $TAG already exists${NC}"
    echo ""
    echo "Options:"
    echo "  1. Delete and recreate"
    echo "  2. Cancel"
    read -p "Choose (1/2): " choice
    
    if [ "$choice" = "1" ]; then
        gh release delete "$TAG" -y
        echo -e "${GREEN}✓${NC} Deleted existing release"
    else
        echo "Cancelled"
        exit 0
    fi
fi

# Get release notes from CHANGELOG
echo ""
echo -e "${BLUE}📝 Extracting release notes from CHANGELOG.md...${NC}"

# Extract release notes for this version from CHANGELOG
NOTES=$(awk "/## \[$VERSION\]/,/^---$/" CHANGELOG.md | sed '1d;$d' | sed '/^$/d')

if [ -z "$NOTES" ]; then
    NOTES="Release version $VERSION

**Download**: SwitchToolkit-v${VERSION}.apk

See CHANGELOG.md for details."
fi

# Get SHA256
if [ -f "$RELEASE_INFO" ]; then
    SHA256=$(jq -r '.sha256' "$RELEASE_INFO")
    NOTES="$NOTES

**SHA256**: \`$SHA256\`"
fi

echo ""
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${BLUE}Release Notes:${NC}"
echo "$NOTES"
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""

echo -e "${YELLOW}Create release? (y/n):${NC}"
read -r CONFIRM

if [ "$CONFIRM" != "y" ] && [ "$CONFIRM" != "Y" ]; then
    echo "Cancelled"
    exit 0
fi

echo ""
echo -e "${BLUE}📦 Creating GitHub release...${NC}"

# Create release with gh CLI
gh release create "$TAG" \
    "$APK_FILE" \
    --title "Switch Toolkit v${VERSION}" \
    --notes "$NOTES" \
    --latest

echo ""
echo -e "${BLUE}================================${NC}"
echo -e "${GREEN}✅ Release Created!${NC}"
echo -e "${BLUE}================================${NC}"
echo ""
echo -e "Version: ${GREEN}$TAG${NC}"
echo -e "URL: ${BLUE}https://github.com/CrownParkComputing/switchtoolkitandroid/releases/tag/$TAG${NC}"
echo ""
echo -e "${GREEN}📥 Users can download from:${NC}"
echo -e "   https://github.com/CrownParkComputing/switchtoolkitandroid/releases/latest"
echo ""
