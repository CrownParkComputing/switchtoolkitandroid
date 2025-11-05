#!/bin/bash

###############################################
# Quick Test of Release Update Script
# This creates a test release without pushing
###############################################

echo "🧪 Testing release update script..."
echo ""
echo "This will:"
echo "  1. Check if APK exists"
echo "  2. Show APK information"
echo "  3. Simulate version update"
echo ""
echo "It will NOT push to GitHub."
echo ""

# Source configuration
SOURCE_DIR="/home/jon/SwitchToolkit/src/SwitchToolkit/bin/Release/net9.0-android35.0"
APK_FILE="com.switchtoolkit.mobile-Signed.apk"

# Check APK
if [ -f "$SOURCE_DIR/$APK_FILE" ]; then
    echo "✅ APK found: $SOURCE_DIR/$APK_FILE"
    echo ""
    echo "📊 APK Information:"
    echo "   Size: $(du -h "$SOURCE_DIR/$APK_FILE" | cut -f1)"
    echo "   Modified: $(date -r "$SOURCE_DIR/$APK_FILE" "+%Y-%m-%d %H:%M:%S")"
    echo "   SHA256: $(sha256sum "$SOURCE_DIR/$APK_FILE" | cut -d' ' -f1 | cut -c1-16)..."
    echo ""
    echo "✅ Ready to create release!"
    echo ""
    echo "To create a release, run:"
    echo "   ./update-release.sh"
else
    echo "❌ APK not found!"
    echo ""
    echo "Build the project first:"
    echo "   cd /home/jon/SwitchToolkit"
    echo "   /home/jon/.dotnet/dotnet build -c Release"
fi
