# Switch Toolkit for Android

A comprehensive Nintendo Switch file management and emulator toolkit for Android devices.

[![Latest Release](https://img.shields.io/badge/Latest-Download%20APK-green)](https://github.com/CrownParkComputing/switchtoolkitandroid/releases/latest)
[![License](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

## 📥 Download

Download the latest APK from the [Releases](https://github.com/CrownParkComputing/switchtoolkitandroid/releases/latest) page.

### Installation

1. Download the latest `SwitchToolkit.apk` from releases
2. Enable "Install from Unknown Sources" in your Android settings
3. Install the APK
4. Grant storage permissions when prompted

## 🎮 Features

### Game Library Management
- **Icon-Based Library View**: Browse your Switch games with beautiful cover art (5 icons per row)
- **Smart Search**: Quickly find games by title or Title ID
- **Tap Controls**: 
  - Single tap to launch game in emulator
  - Double tap for edit menu
- **Statistics Dashboard**: View comprehensive library statistics
  - Total games count
  - Base games, updates, and DLC breakdown
  - Total storage usage

### File Organization

#### Duplicate Detection
- **Smart Scanning**: Find duplicate games by Title ID
- **Individual Control**: Choose which duplicate to keep or delete
- **Version Sorting**: Automatically identifies newest versions
- **Type Detection**: Separates base games, updates, and DLC

#### Batch Rename
- **Customizable Format**: Choose what to include in filenames:
  - Game Title
  - Title ID
  - Version number
  - File size
- **Live Preview**: See before/after comparison before renaming
- **Type Tags**: Automatically adds [UPD] or [DLC] tags

#### Folder Organization
- **Auto-Grouping**: Organize base games with their updates and DLC
- **Smart Folders**: Creates folders named after game titles
- **Structure Example**:
  ```
  /Super Mario Odyssey-010028600EBDA000/
    ├─ Super Mario Odyssey [010028600EBDA000].nsp
    ├─ Super Mario Odyssey [010028600EBDA800] [UPD].nsp
    └─ Super Mario Odyssey [010028600EBDC001] [DLC].nsp
  ```

### NSZ Decompression
- **Batch Processing**: Decompress multiple NSZ files to NSP format
- **Progress Tracking**: Real-time progress bars for each file
- **Error Handling**: Detailed error messages for troubleshooting
- **Format Support**: Handles standard NSZ compression

### NSP Merging
- **Multi-Part Support**: Merge split NSP files (part1, part2, etc.)
- **Automatic Detection**: Finds all parts of split archives
- **Integrity Validation**: Verifies merged files
- **Batch Mode**: Process multiple split archives at once

### Emulator Integration
- **Multi-Emulator Support**:
  - Skyline Emulator
  - Yuzu Android
  - Egg NS
  - Custom emulators
- **One-Tap Launch**: Launch games directly from library
- **Per-Game Assignment**: Assign different emulators to different games
- **Quick Switch**: Change emulator assignments on the fly

### File Management
- **Android 13+ Support**: Full scoped storage compatibility
- **SAF Integration**: Secure file access via Storage Access Framework
- **Batch Operations**: Move, copy, or delete multiple files
- **Path Management**: Flexible storage location support

### Keys Management
- **prod.keys Support**: Manage encryption keys for game decryption
- **Key Validation**: Verify key file integrity
- **Import/Export**: Easy key file management
- **Secure Storage**: Keys stored securely on device

## 📱 Screenshots

### Main Menu
<img src="screenshots/menu.png" width="300" alt="Main Menu">

Modern card-based interface with quick access to all features.

### Game Library
<img src="screenshots/library.png" width="300" alt="Game Library">

Beautiful icon grid view with search and statistics.

### Library Statistics
<img src="screenshots/stats.png" width="300" alt="Statistics">

Comprehensive statistics dashboard showing game counts and storage usage.

### Duplicate Detection
<img src="screenshots/duplicates.png" width="300" alt="Duplicates">

Smart duplicate finder with individual file control.

### Rename Preview
<img src="screenshots/rename.png" width="300" alt="Rename">

Live preview of batch rename operations with customizable format.

### Organize Files
<img src="screenshots/organize.png" width="300" alt="Organize">

Automatic folder organization for base games, updates, and DLC.

### NSZ Decompression
<img src="screenshots/nsz.png" width="300" alt="NSZ Decompression">

Batch NSZ to NSP decompression with progress tracking.

### NSP Merging
<img src="screenshots/merge.png" width="300" alt="NSP Merge">

Merge split NSP archives with automatic part detection.

### Emulator Settings
<img src="screenshots/emulator.png" width="300" alt="Emulator">

Configure and assign emulators for game launching.

## 🔧 Technical Details

### Supported File Formats
- **NSP**: Nintendo Submission Package (game archives)
- **NSZ**: Compressed NSP format
- **XCI**: NX Card Image (cartridge dumps)

### Title ID Structure
Switch games use 16-character hexadecimal Title IDs:
- Last 3 digits = `000`: Base game
- Last 3 digits = `800`: Update/patch
- Other values: DLC content

Example: `010028600EBDA000` (Super Mario Odyssey base game)

### Storage Requirements
- Minimum: 100MB free space for app
- Recommended: 20GB+ for game library
- NSZ decompression: 2x compressed file size

### Android Requirements
- **Minimum**: Android 7.0 (API 24)
- **Recommended**: Android 9.0+ (API 28+)
- **Optimal**: Android 13+ (API 33+) for full scoped storage support

### Permissions Required
- **Storage Access**: Read/write game files
- **Install Packages**: Launch external emulators

## 🚀 Usage Guide

### Initial Setup
1. Launch Switch Toolkit
2. Grant storage permissions
3. Select your game library folder
4. Wait for initial scan to complete

### Adding Games
1. Copy NSP/NSZ/XCI files to your library folder
2. Tap "Refresh Library" in the library page
3. Game icons and metadata will load automatically

### Managing Keys
1. Go to Menu → Keys Management
2. Tap "Import prod.keys"
3. Select your prod.keys file
4. Keys are stored securely for decryption

### Configuring Emulators
1. Go to Menu → Emulator Settings
2. Tap "Add Emulator"
3. Select emulator package name
4. Set as default or assign per-game

### Decompressing NSZ Files
1. Go to Menu → NSZ Decompression
2. Tap "Select NSZ Files"
3. Choose files to decompress
4. Tap "Decompress All"
5. Wait for completion

### Merging Split NSP Files
1. Go to Menu → Merge NSP
2. Tap "Select Files"
3. Choose all parts of split archive
4. Tap "Merge"
5. Merged file will be created in same location

## 🐛 Troubleshooting

### Library Not Loading
- Ensure storage permissions are granted
- Check that folder contains valid NSP/NSZ/XCI files
- Try refreshing the library

### Games Won't Launch
- Verify emulator is installed
- Check emulator assignment in settings
- Ensure game files are not corrupted

### NSZ Decompression Fails
- Verify prod.keys are imported and valid
- Check available storage space
- Ensure NSZ file is not corrupted

### Permission Denied Errors
- Grant all requested permissions
- On Android 11+, ensure scoped storage access
- Try restarting the app

## 🔐 Privacy & Security

- **No Internet Required**: All operations are local
- **No Data Collection**: No analytics or tracking
- **Secure Storage**: Keys and settings stored locally
- **Open Development**: Source available at [SwitchToolkit](https://github.com/CrownParkComputing/SwitchToolkit)

## 📝 Changelog

### Version 1.0.0 (Latest)
- Initial release
- Game library with icon grid view
- Statistics and duplicate detection
- Batch rename with customizable format
- Folder organization
- NSZ decompression
- NSP merging
- Multi-emulator support
- Keys management
- Android 13+ scoped storage support

## 🤝 Contributing

This is a release-only repository. For source code and contributions, visit the main [SwitchToolkit repository](https://github.com/CrownParkComputing/SwitchToolkit).

## 📄 License

MIT License - See [LICENSE](LICENSE) file for details.

## ⚠️ Disclaimer

This tool is for managing legally obtained game files only. Users are responsible for complying with all applicable laws and Nintendo's terms of service. The developers do not condone or support piracy.

## 🔗 Links

- **Main Repository**: [SwitchToolkit](https://github.com/CrownParkComputing/SwitchToolkit)
- **Issues**: [Report bugs](https://github.com/CrownParkComputing/switchtoolkitandroid/issues)
- **Discussions**: [Community](https://github.com/CrownParkComputing/switchtoolkitandroid/discussions)

## 💬 Support

For support, please:
1. Check the troubleshooting section above
2. Search [existing issues](https://github.com/CrownParkComputing/switchtoolkitandroid/issues)
3. Open a new issue with detailed information

---

Made with ❤️ by Crown Park Computing
