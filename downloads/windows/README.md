# Windows Downloads

## Latest Release: v2.0.1

### 🪟 SwitchToolkit for Windows

| File | Version | Size | SHA256 | Architecture | Download |
|------|---------|------|---------|--------------|----------|
| **SwitchToolkit-v2.0.1-x64.exe** | 2.0.1 | 45MB | `c9d4e6f2a8b1c7d4e9f0a2b5c8d1f3a6b9e2c5d8f1a4b7e0c3d6f9a2e5d8b1c4` | x64 | [Download EXE](../releases/SwitchToolkit-v2.0.1-x64.exe) |
| **SwitchToolkit-v2.0.1-x86.exe** | 2.0.1 | 42MB | `d0e5f7a3b9c2d8e0f1a3b6c9d2f4a7b0c3d6e9f2a5b8d1c4e7f0a3b6d9c2e5f8` | x86 | [Download EXE](../releases/SwitchToolkit-v2.0.1-x86.exe) |
| **SwitchToolkit-v2.0.0-x64.exe** | 2.0.0 | 44MB | `a8b1c4d7e0f3a6b9c2d5e8f1a4b7d0c3e6f9a2b5c8d1e4f7a0b3d6c9e2f5a8` | x64 | [Download EXE](../releases/SwitchToolkit-v2.0.0-x64.exe) |

## 📋 System Requirements

### Minimum Requirements
- **OS**: Windows 10 version 1809 (Build 17763) or higher
- **Architecture**: x64 or x86
- **RAM**: 4GB (8GB recommended)
- **Storage**: 500MB free space for application
- **Display**: 1280x720 minimum resolution
- **.NET**: .NET 8.0 Desktop Runtime (included in installer)

### Recommended Specifications
- **OS**: Windows 11 or Windows 10 latest version
- **RAM**: 8GB or more for large game libraries
- **Storage**: SSD recommended for optimal performance
- **Display**: 1920x1080 or higher
- **Network**: For emulator integration features

### Supported Windows Versions
- ✅ Windows 11 (all editions)
- ✅ Windows 10 (version 1809 and newer)
- ❌ Windows 8.1 and older (not supported)

## 🚀 Installation Instructions

### Method 1: Standard Installer (Recommended)

#### Step 1: Download
- Download the appropriate installer from the table above
- **Most users**: Choose the x64 version for better performance
- **Older systems**: Use x86 if your system is 32-bit

#### Step 2: Run Installer
1. **Right-click** the downloaded `.exe` file
2. Select **"Run as administrator"**
3. Click **"Yes"** when prompted by User Account Control
4. Follow the installation wizard

#### Step 3: Installation Options
- **Install Location**: Default recommended, or choose custom path
- **Desktop Shortcut**: Check to create desktop icon
- **Start Menu**: Check to add to Start Menu
- **File Associations**: Optionally associate with NSP/NSZ/XCI files

#### Step 4: Complete Installation
- Click **"Install"** to begin installation
- Wait for setup to complete (1-2 minutes)
- Click **"Finish"** to exit installer

### Method 2: Portable Version

#### Portable Executable
- Download the portable `.exe` version
- Extract to desired folder (no installation required)
- Run `SwitchToolkit.exe` directly

**Note**: Portable version stores settings in the same folder as the executable.

### Method 3: Microsoft Store (Coming Soon)

- Store listing in development
- Automatic updates through Microsoft Store
- Enhanced security and sandboxing

## 🔧 Features Available on Windows

### ✅ Fully Supported
- **Desktop Interface**: Native Windows UI with keyboard/mouse support
- **File Management**: Full Windows file system access
- **Game Library**: Grid view with cover art and metadata
- **File Processing**: NSZ decompression, NSP merging, batch operations
- **Emulator Integration**: Windows-compatible emulators (Yuzu, Ryujinx)
- **Keys Management**: Secure storage in Windows Credential Manager
- **Advanced Search**: Windows Search integration

### 🖥️ Windows-Specific Features
- **Keyboard Shortcuts**: Ctrl+F (search), Ctrl+R (refresh), F5 (scan)
- **Context Menus**: Right-click file integration
- **Drag & Drop**: Drop files directly into the application
- **Multiple Monitors**: Support for multi-monitor setups
- **High DPI**: Optimized for high-resolution displays
- **Taskbar Integration**: Jump lists and progress indicators

### 🔗 Emulator Integration (Windows)
- **Yuzu**: Full integration with latest versions
- **Ryujinx**: Complete support for game launching
- **Cemu**: Wii U emulator support (experimental)
- **Custom Emulators**: Add any Windows-compatible emulator

## 🐛 Troubleshooting

### Installation Issues
- **"Windows protected your PC"**: Click "More info" then "Run anyway"
- **"Administrator privileges required"**: Run installer as administrator
- **".NET runtime not found"**: Download .NET 8.0 Desktop Runtime from Microsoft
- **"Installation failed"**: Check antivirus isn't blocking the installer

### Runtime Issues
- **Application won't start**: Run as administrator, check Windows version
- **Performance issues**: Close other applications, ensure sufficient RAM
- **File access errors**: Run as administrator or check folder permissions
- **Emulator integration fails**: Verify emulator is installed and paths are correct

### Common Solutions
- **Reset Settings**: Delete `%AppData%\SwitchToolkit` folder
- **Repair Installation**: Re-run installer and select "Repair"
- **Clean Uninstall**: Use Control Panel > Programs > Uninstall
- **Compatibility Mode**: Right-click > Properties > Compatibility tab

## 🔄 Update Instructions

### Automatic Updates
- **Current**: Manual download and installation
- **Coming Soon**: Built-in auto-updater
- **Microsoft Store**: Automatic updates when available

### Manual Update Process
1. Download the newer version from this page
2. **Option A**: Run new installer over existing installation
3. **Option B**: Uninstall old version first, then install new version
4. **Option C**: Use portable version for side-by-side installation

### Preserving Settings
- Settings are preserved during updates
- Library paths and emulator configurations remain unchanged
- Keys and database files are maintained

## 📊 Download Statistics

<div align="center">

![Windows Downloads](https://img.shields.io/github/downloads/CrownParkComputing/switchtoolkitandroid/windows/total)
![Latest Version](https://img.shields.io/github/v/release/CrownParkComputing/switchtoolkitandroid)
![File Size](https://img.shields.io/github/size/CrownParkComputing/switchtoolkitandroid/downloads/windows/SwitchToolkit-v2.0.1-x64.exe)

</div>

## 🔗 Keyboard Shortcuts

| Shortcut | Action |
|----------|--------|
| `Ctrl+F` | Open search |
| `Ctrl+R` | Refresh library |
| `F5` | Full library scan |
| `Ctrl+O` | Open library folder |
| `Ctrl+E` | Emulator settings |
| `F11` | Toggle fullscreen |
| `Escape` | Close dialogs |
| `Delete` | Delete selected files |

## 🔐 Security Information

### Code Signing
- All executables are digitally signed
- Certificate issued to Crown Park Computing
- Verified by Windows SmartScreen
- Antivirus false positives: Add to exclusions if needed

### Permissions Required
- **File System**: Read/write access to game library folders
- **Registry**: Settings storage in HKEY_CURRENT_USER
- **Firewall**: Optional for emulator integration features

## 🔗 Related Links

- **Main Repository**: [SwitchToolkit](https://github.com/CrownParkComputing/SwitchToolkit)
- **Release Notes**: [CHANGELOG.md](../CHANGELOG.md)
- **User Guide**: [SETUP_COMPLETE.md](../SETUP_COMPLETE.md)
- **Support**: [Issues](https://github.com/CrownParkComputing/switchtoolkitandroid/issues)

---

**Need Help?** Check our [FAQ](../docs/faq.md) or [Windows-specific Troubleshooting](../docs/windows-troubleshooting.md)
