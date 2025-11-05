# Screenshots

This directory contains screenshots of Switch Toolkit for Android.

## Taking Screenshots

To add screenshots:

1. Install the APK on your Android device
2. Navigate to each page/feature
3. Take screenshots (Power + Volume Down on most devices)
4. Transfer screenshots to this directory
5. Rename them according to the list below

## Required Screenshots

- `menu.png` - Main menu page
- `library.png` - Game library grid view
- `stats.png` - Library statistics page
- `duplicates.png` - Duplicate detection results
- `rename.png` - Rename preview with before/after
- `organize.png` - Organize files page
- `nsz.png` - NSZ decompression page
- `merge.png` - NSP merge page
- `emulator.png` - Emulator settings page
- `keys.png` - Keys management page (optional)
- `file-manager.png` - File manager page (optional)

## Screenshot Guidelines

- **Resolution**: 1080x2400 or similar (standard phone resolution)
- **Format**: PNG (preferred) or JPEG
- **Content**: Show the feature in use with sample data
- **No Personal Data**: Don't include personal file paths or sensitive information
- **Clean UI**: Make sure no error messages or loading states are visible
- **Representative**: Show typical usage scenarios

## Image Optimization

After adding screenshots, optimize them:

```bash
# Install optipng if not available
sudo apt install optipng

# Optimize all PNGs
optipng -o7 *.png
```

Or use online tools like TinyPNG for compression.
