# macOS Downloads

## Development Status: Alpha Testing

### 🍎 SwitchToolkit for macOS

**Coming Soon**: macOS builds are currently in development and alpha testing phase.

## 📋 Target Specifications

### Planned Requirements
- **macOS Version**: 11.0+ (Big Sur) for Apple Silicon and Intel
- **Architecture**: Universal binary (Apple Silicon + Intel)
- **RAM**: 4GB minimum, 8GB recommended
- **Storage**: 500MB for application, 20GB+ for game library
- **Display**: Retina support with automatic scaling

### Package Formats
- **Apple Silicon (.arm64)**: Native M1/M2/M3 support
- **Intel (.x86_64)**: Legacy Intel Mac support
- **Universal Binary**: Both architectures in single package
- **Homebrew**: For macOS package manager users
- **Mac App Store**: Sandboxed distribution (planned)

## 🚧 Current Development Status

### In Development
- ✅ **Core Library**: Cross-platform file processing engine
- ✅ **File System**: macOS file system integration
- 🔄 **Native Interface**: macOS-specific UI development
- 🔄 **Apple Silicon**: M1/M2/M3 optimization
- 🔄 **Code Signing**: Developer signing and notarization

### Planned Features
- **Native macOS UI**: Menu bars, keyboard shortcuts, trackpad gestures
- **Spotlight Integration**: Search SwitchToolkit files from Spotlight
- **Quick Actions**: File context menu integration
- **Touch Bar**: Support for MacBook Pro Touch Bar users
- **Auto-updater**: Background updates with user notification

## 🧪 Alpha Testing Program

### Help Us Test
We're looking for macOS users to help test SwitchToolkit during development:

1. **Join our Discord**: [macOS Testing Channel](https://discord.gg/crownparkcomputing)
2. **TestFlight Beta**: Request access through GitHub
3. **Bug Reports**: Submit issues with system information
4. **Feedback**: Share usability and feature suggestions

### What We're Testing
- **Universal Binary**: Apple Silicon and Intel compatibility
- **File System**: macOS file permissions and security
- **Performance**: Large game libraries on various hardware
- **Integration**: macOS system features and services

## 📦 Early Access Builds

### Current Status
- **Internal Alpha**: Core functionality testing only
- **Closed Beta**: Limited tester group (Q1 2026)
- **Public Beta**: Open testing (Q2 2026)
- **App Store Release**: Mac App Store distribution (Q3 2026)

## 🔧 Build from Source

### Prerequisites
```bash
# Install .NET 8.0 SDK
brew install --cask dotnet

# Install additional tools
brew install mono-libgdiplus
xcode-select --install
```

### Build Instructions
```bash
# Clone repository
git clone https://github.com/CrownParkComputing/switchtoolkitandroid.git
cd switchtoolkitandroid

# Build for macOS (Universal)
dotnet publish src/SwitchToolkit/SwitchToolkit.csproj \
  -r osx-x64 \
  -c Release \
  -p:PublishSingleFile=true \
  -p:SelfContained=true

# For Apple Silicon
dotnet publish src/SwitchToolkit/SwitchToolkit.csproj \
  -r osx-arm64 \
  -c Release \
  -p:PublishSingleFile=true \
  -p:SelfContained=true

# Run the application
open ./bin/Release/net8.0/osx-x64/SwitchToolkit.app
```

## 🔐 Security & Privacy

### Code Signing
- **Developer ID**: Code-signed with Developer ID certificate
- **Notarization**: Apple notarization for distribution
- **Entitlements**: Minimal permissions required
- **Privacy**: No data collection or tracking

### Security Features
- **App Transport Security**: HTTPS-only network access
- **Keychain**: Secure credential storage
- **Sandbox**: Limited system access when distributed via App Store

## 🐛 Known Issues

### Current Limitations
- **Menu Bar Only**: No toolbar or window management
- **File Permissions**: May require manual permission grants
- **Emulator Integration**: Limited testing with macOS emulators
- **Launch Performance**: Startup time optimization needed

### Planned Fixes
- **Windowed Interface**: Full desktop window with menus
- **Native Controls**: macOS-native UI components
- **Performance**: Startup and runtime optimization
- **Emulator Support**: Better integration with macOS emulators

## 📊 Download Statistics

<div align="center">

![Development Phase](https://img.shields.io/badge/Phase-Alpha%20Testing-orange)
![Architecture](https://img.shields.io/badge/Universal%20Binary-Apple%20Silicon%20%2B%20Intel-blue)
![Release Target](https://img.shields.io/badge/Release-Q3%202006-green)

</div>

## 🔗 Related Links

- **Source Code**: [SwitchToolkit macOS Development](https://github.com/CrownParkComputing/switchtoolkitandroid/tree/macos-support)
- **Apple Silicon**: [M1/M2/M3 Optimization](https://github.com/CrownParkComputing/switchtoolkitandroid/issues?q=is%3Aissue+is%3Aopen+label%3A%22apple%20silicon%22)
- **Community**: [Discord macOS Channel](https://discord.gg/crownparkcomputing)
- **TestFlight**: [Beta Testing Program](https://github.com/CrownParkComputing/switchtoolkitandroid/discussions)

## ❓ FAQ

### Q: When will macOS support be available?
A: We target a public beta in Q2 2026 and App Store release in Q3 2026.

### Q: Will it work on M1/M2/M3 Macs?
A: Yes! We'll provide native Apple Silicon builds with universal binaries for compatibility.

### Q: Can I install it on multiple Macs?
A: Yes, Apple allows installing purchased apps on all Macs associated with your Apple ID.

### Q: What about older Intel Macs?
A: Yes, we'll maintain Intel support with universal binaries that work on both architectures.

### Q: Will it be in the Mac App Store?
A: Yes, we plan to distribute via Mac App Store for easier installation and updates.

## 🎯 macOS-Specific Features

### Native Integration
- **Menu Bar**: Native macOS menu bar with keyboard shortcuts
- **Dock Integration**: Progress indicators in dock icon
- **Notification Center**: File operation notifications
- **Spotlight**: Search SwitchToolkit files from Spotlight
- **Quick Actions**: File context menu actions

### Apple Silicon Optimization
- **Native Performance**: Optimized for M1/M2/M3 chips
- **Memory Efficiency**: Better memory management
- **Power Management**: Efficient battery usage
- **Thermal Management**: Reduced heat generation

---

**Stay Updated**: [Twitter](https://twitter.com/CrownParkComp) • [GitHub Releases](https://github.com/CrownParkComputing/switchtoolkitandroid/releases)
