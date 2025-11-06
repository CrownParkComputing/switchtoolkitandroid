# SwitchToolkit Release Repository

A comprehensive Nintendo Switch file management and emulator toolkit for multiple platforms.

[![GitHub Pages](https://img.shields.io/badge/Website-GitHub%20Pages-blue)](https://crownparkcomputing.github.io/switchtoolkitandroid/)
[![Latest Release](https://img.shields.io/badge/Latest-Release-green)](https://github.com/CrownParkComputing/switchtoolkitandroid/releases/latest)
[![License](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

## � Quick Download

### 📱 Android
- **Latest Release**: [v2.0.1](https://github.com/CrownParkComputing/switchtoolkitandroid/releases/latest)
- **Direct Download**: [SwitchToolkit-v2.0.1.apk](releases/SwitchToolkit-v2.0.1.apk)
- **Requirements**: Android 7.0+ (API 24+)

### 🪟 Windows
- **Latest Release**: [v2.0.1](https://github.com/CrownParkComputing/switchtoolkitandroid/releases/latest)
- **Direct Download**: [SwitchToolkit-v2.0.1.exe](releases/SwitchToolkit-v2.0.1.exe)
- **Requirements**: Windows 10/11

### 🖥️ Linux
- **Coming Soon**: Linux builds in development
- **Target**: Ubuntu 20.04+ and other distributions

### 🍎 macOS
- **Coming Soon**: macOS builds in development
- **Target**: macOS 11.0+ (Big Sur and newer)

## 🎮 What is SwitchToolkit?

SwitchToolkit is a powerful, cross-platform application designed for Nintendo Switch enthusiasts who want to:

### 📋 Core Features

#### Game Library Management
- **Icon-Based Library View**: Beautiful grid layout with game cover art
- **Smart Search**: Find games by title or Title ID instantly
- **Statistics Dashboard**: Track your collection with detailed analytics
- **Tap Controls**: Intuitive single/double tap interactions

#### File Organization & Processing
- **Duplicate Detection**: Find and manage duplicate games intelligently
- **Batch Rename**: Customizable filename patterns with preview
- **Folder Organization**: Auto-group base games with updates and DLC
- **NSZ Decompression**: Batch decompress compressed Nintendo files
- **NSP Merging**: Combine split archive files seamlessly

#### Emulator Integration
- **Multi-Emulator Support**: Skyline, Yuzu, Egg NS, and custom emulators
- **Per-Game Assignment**: Choose different emulators for different games
- **One-Tap Launch**: Launch games directly from the library
- **Quick Switch**: Change emulator assignments on the fly

#### File Management
- **Cross-Platform Support**: Works on Android, Windows, and coming to Linux/macOS
- **Modern Storage**: Android 13+ scoped storage, Windows file system access
- **Batch Operations**: Move, copy, or delete multiple files efficiently
- **Keys Management**: Secure handling of encryption keys

### 🔧 Technical Capabilities

#### Supported File Formats
- **NSP**: Nintendo Submission Package (game archives)
- **NSZ**: Compressed NSP format with efficient storage
- **XCI**: NX Card Image (cartridge dumps)

#### Title ID Structure Support
Understanding Switch game identification:
- Last 3 digits `000`: Base game
- Last 3 digits `800`: Update/patch
- Other values: DLC content

Example: `010028600EBDA000` = Super Mario Odyssey base game

## 📥 Installation Guide

### Android Installation
1. Download the latest APK from the [Releases](releases/) section
2. Enable "Install from Unknown Sources" in Android settings
3. Install the APK and grant storage permissions when prompted
4. Launch the app and set up your game library folder

### Windows Installation
1. Download the latest EXE from the [Releases](releases/) section
2. Run the installer as administrator
3. Follow the installation wizard
4. Launch SwitchToolkit from Start Menu or desktop shortcut

## 🎯 Platform Comparison

| Feature | Android | Windows | Linux | macOS |
|---------|---------|---------|--------|-------|
| **File Processing** | ✅ | ✅ | 🔄 | 🔄 |
| **Emulator Integration** | ✅ | ✅ | 🔄 | 🔄 |
| **Touch Interface** | ✅ | ❌ | ❌ | ❌ |
| **Desktop Features** | ❌ | ✅ | 🔄 | 🔄 |
| **Release Status** | Stable | Stable | Beta | Beta |

**Legend**: ✅ Available | 🔄 In Development | ❌ Not Available

## 📱 Screenshots

### Android Interface
<div style="display: flex; flex-wrap: wrap; gap: 10px;">
  <img src="screenshots/menu.png" width="200" alt="Main Menu">
  <img src="screenshots/library.png" width="200" alt="Game Library">
  <img src="screenshots/duplicates.png" width="200" alt="Duplicate Detection">
  <img src="screenshots/organize.png" width="200" alt="File Organization">
</div>

### Windows Interface
<div style="display: flex; flex-wrap: wrap; gap: 10px;">
  <img src="screenshots/windows/main-window.png" width="300" alt="Main Window">
  <img src="screenshots/windows/library-view.png" width="300" alt="Library View">
  <img src="screenshots/windows/file-operations.png" width="300" alt="File Operations">
</div>

## 🔄 Version History

### Latest Release: v2.0.1 (November 6, 2025)
- 🐛 **Bug Fixes**: Improved Android 13+ compatibility
- ⚡ **Performance**: Optimized library scanning
- 📱 **UI**: Enhanced touch interface for mobile devices

### Previous Release: v2.0.0 (November 5, 2025)
- 🎉 **Major Release**: Cross-platform support
- 🖥️ **Windows**: Full Windows desktop application
- 📱 **Android**: Mature Android app with all features
- 🔧 **Core**: Improved file processing engine

For complete changelog, see [CHANGELOG.md](CHANGELOG.md)

## 🔐 Security & Privacy

- **No Internet Required**: All operations are performed locally
- **No Data Collection**: Zero analytics or tracking
- **Open Source**: Transparent development process
- **Secure Storage**: Encryption keys stored safely on device
- **Privacy First**: Your game library stays on your device

## 🤝 Contributing

This repository focuses on releases and documentation. For source code contributions:

- **Main Repository**: [SwitchToolkit](https://github.com/CrownParkComputing/SwitchToolkit)
- **Issues & Bugs**: [Report here](https://github.com/CrownParkComputing/switchtoolkitandroid/issues)
- **Feature Requests**: [Discuss here](https://github.com/CrownParkComputing/switchtoolkitandroid/discussions)

## 📄 License

MIT License - See [LICENSE](LICENSE) file for complete terms.

## ⚠️ Legal Disclaimer

This tool is designed for managing **legally obtained** game files only. Users are responsible for:

- Complying with all applicable laws
- Following Nintendo's terms of service
- Owning legitimate copies of all games
- Understanding copyright and fair use regulations

**We do not condone or support piracy in any form.**

## 🌟 Support & Community

- **Documentation**: [User Guide](SETUP_COMPLETE.md)
- **Issues**: [Report problems](https://github.com/CrownParkComputing/switchtoolkitandroid/issues)
- **Discord**: [Join our community](https://discord.gg/crownparkcomputing)
- **Reddit**: [r/SwitchToolkit](https://reddit.com/r/SwitchToolkit)

## 📊 Project Stats

<div align="center">

![GitHub stars](https://img.shields.io/github/stars/CrownParkComputing/switchtoolkitandroid?style=social)
![GitHub forks](https://img.shields.io/github/forks/CrownParkComputing/switchtoolkitandroid?style=social)
![GitHub watchers](https://img.shields.io/github/watchers/CrownParkComputing/switchtoolkitandroid?style=social)

![Release Downloads](https://img.shields.io/github/downloads/CrownParkComputing/switchtoolkitandroid/total)
![Android Downloads](https://img.shields.io/github/downloads/CrownParkComputing/switchtoolkitandroid/android/total)
![Windows Downloads](https://img.shields.io/github/downloads/CrownParkComputing/switchtoolkitandroid/windows/total)

</div>

---

<div align="center">

**Made with ❤️ by Crown Park Computing**

[Website](https://crownparkcomputing.com) • 
[GitHub](https://github.com/CrownParkComputing) • 
[Twitter](https://twitter.com/CrownParkComp) • 
[Discord](https://discord.gg/crownparkcomputing)

</div>
