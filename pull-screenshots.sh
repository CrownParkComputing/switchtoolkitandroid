#!/bin/bash

###############################################
# Screenshot Helper
# Pulls screenshots from Android device via ADB
###############################################

SCREENSHOTS_DIR="/home/jon/switchtoolkitandroid/screenshots"
DEVICE_PATH="/sdcard/Pictures/Screenshots"

echo "📸 Switch Toolkit Screenshot Helper"
echo ""

# Check if adb is available
if ! command -v adb &> /dev/null; then
    echo "❌ Error: adb not found"
    echo "Install Android SDK Platform Tools"
    exit 1
fi

# Check device connection
if ! adb devices | grep -q "device$"; then
    echo "❌ Error: No Android device connected"
    echo ""
    echo "Connect your device and enable USB debugging:"
    echo "1. Settings → About Phone → Tap 'Build Number' 7 times"
    echo "2. Settings → Developer Options → Enable USB Debugging"
    echo "3. Connect device via USB"
    echo "4. Allow USB debugging on device"
    exit 1
fi

echo "✅ Device connected"
echo ""

# List available screenshots
echo "📱 Available screenshots on device:"
echo ""
adb shell "ls -lh $DEVICE_PATH/*.png 2>/dev/null | tail -20" || {
    echo "❌ No screenshots found on device"
    echo ""
    echo "Take screenshots first:"
    echo "- Open Switch Toolkit on device"
    echo "- Navigate to each page"
    echo "- Press Power + Volume Down to capture"
    exit 1
}

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "Copy screenshots? (y/n)"
read -r CONFIRM

if [ "$CONFIRM" != "y" ]; then
    echo "Cancelled"
    exit 0
fi

echo ""
echo "📥 Pulling screenshots..."
echo ""

# Create temp directory
TEMP_DIR=$(mktemp -d)

# Pull all screenshots
adb pull "$DEVICE_PATH/." "$TEMP_DIR/" 2>&1 | grep -E "(pull:|bytes)"

# Count pulled files
COUNT=$(find "$TEMP_DIR" -name "*.png" | wc -l)

if [ "$COUNT" -eq 0 ]; then
    echo "❌ No screenshots copied"
    exit 1
fi

echo ""
echo "✅ Pulled $COUNT screenshot(s)"
echo ""

# Interactive renaming
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "📝 Rename screenshots"
echo ""
echo "Available names:"
echo "  1. menu.png          - Main menu"
echo "  2. library.png       - Game library"
echo "  3. stats.png         - Statistics page"
echo "  4. duplicates.png    - Duplicates detection"
echo "  5. rename.png        - Rename preview"
echo "  6. organize.png      - Organize files"
echo "  7. nsz.png           - NSZ decompression"
echo "  8. merge.png         - NSP merge"
echo "  9. emulator.png      - Emulator settings"
echo " 10. keys.png          - Keys management"
echo " 11. file-manager.png  - File manager"
echo ""

# List screenshots with numbers
i=1
for file in "$TEMP_DIR"/*.png; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        echo "[$i] $filename"
        i=$((i + 1))
    fi
done

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "Enter mappings (e.g., '1:menu 2:library 3:stats')"
echo "Or press Enter to copy all with original names:"
read -r MAPPINGS

if [ -n "$MAPPINGS" ]; then
    # Parse mappings
    for mapping in $MAPPINGS; do
        if [[ $mapping =~ ^([0-9]+):([a-z-]+)$ ]]; then
            num="${BASH_REMATCH[1]}"
            name="${BASH_REMATCH[2]}"
            
            # Find the nth screenshot
            file=$(find "$TEMP_DIR" -name "*.png" | sort | sed -n "${num}p")
            
            if [ -f "$file" ]; then
                cp "$file" "$SCREENSHOTS_DIR/${name}.png"
                echo "✅ Copied $(basename "$file") → ${name}.png"
            fi
        fi
    done
else
    # Copy all with original names
    cp "$TEMP_DIR"/*.png "$SCREENSHOTS_DIR/"
    echo "✅ Copied all screenshots"
fi

# Cleanup
rm -rf "$TEMP_DIR"

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "📊 Screenshots in repository:"
ls -lh "$SCREENSHOTS_DIR"/*.png 2>/dev/null | awk '{print "  " $9}' | sed 's|.*/||'

echo ""
echo "✅ Done!"
echo ""
echo "Next steps:"
echo "1. Review screenshots: ls $SCREENSHOTS_DIR"
echo "2. Commit: git add screenshots/ && git commit -m 'Add screenshots'"
echo "3. Push: git push"
