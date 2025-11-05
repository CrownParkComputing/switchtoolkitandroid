# Switch Toolkit Android - Release Repository

This repository contains releases only. No source code is included.

## Quick Links

- 📥 [Download Latest APK](https://github.com/CrownParkComputing/switchtoolkitandroid/releases/latest)
- 📖 [Full Documentation](README.md)
- 🐛 [Report Issues](https://github.com/CrownParkComputing/switchtoolkitandroid/issues)
- 💻 [Source Code](https://github.com/CrownParkComputing/SwitchToolkit)

## What's Included

```
switchtoolkitandroid/
├── README.md              # Comprehensive documentation
├── LICENSE               # MIT License
├── CHANGELOG.md          # Version history
├── VERSION.txt           # Current version
├── screenshots/          # App screenshots
│   ├── menu.png
│   ├── library.png
│   ├── stats.png
│   ├── duplicates.png
│   ├── rename.png
│   ├── organize.png
│   ├── nsz.png
│   ├── merge.png
│   └── emulator.png
├── releases/             # APK files
│   ├── latest.apk        # Latest version (always current)
│   ├── SwitchToolkit-v1.0.0.apk
│   └── release-info-v1.0.0.json
└── update-release.sh     # Automated release script
```

## For Maintainers

### Creating a New Release

Run the automated update script:

```bash
cd /home/jon/switchtoolkitandroid
./update-release.sh
```

The script will:
1. ✅ Verify the built APK exists
2. 📋 Show APK size and SHA256 hash
3. ❓ Prompt for version number and release notes
4. 📦 Copy APK to releases directory
5. 📝 Update VERSION.txt and CHANGELOG.md
6. 🔍 Create release info JSON
7. 📤 Commit and push to GitHub

### Manual Release Steps

If you prefer manual control:

1. **Build the APK**:
   ```bash
   cd /home/jon/SwitchToolkit
   /home/jon/.dotnet/dotnet build -c Release
   ```

2. **Copy APK**:
   ```bash
   cp src/SwitchToolkit/bin/Release/net9.0-android35.0/com.switchtoolkit.mobile-Signed.apk \
      /home/jon/switchtoolkitandroid/releases/SwitchToolkit-v1.0.0.apk
   ```

3. **Update VERSION.txt**:
   ```bash
   echo "1.0.0" > VERSION.txt
   ```

4. **Update CHANGELOG.md**:
   Add entry with version, date, and changes

5. **Commit and Push**:
   ```bash
   git add .
   git commit -m "Release v1.0.0"
   git push origin master
   ```

6. **Create GitHub Release**:
   - Go to repository on GitHub
   - Click "Releases" → "Draft a new release"
   - Tag: `v1.0.0`
   - Title: `Switch Toolkit v1.0.0`
   - Description: Copy from CHANGELOG.md
   - Upload APK file
   - Publish release

### Adding Screenshots

1. **Take Screenshots** on Android device
2. **Transfer** to `screenshots/` directory
3. **Rename** according to convention (see screenshots/README.md)
4. **Optimize** (optional):
   ```bash
   cd screenshots
   optipng -o7 *.png
   ```
5. **Commit**:
   ```bash
   git add screenshots/
   git commit -m "Add/update screenshots"
   git push
   ```

## Repository Structure

### No Source Code
This repository intentionally contains **no source code**. It only includes:
- ✅ Compiled APK files
- ✅ Documentation
- ✅ Screenshots
- ✅ Release metadata

### Why Separate Repository?
- **Faster downloads**: Users don't need to clone large source code
- **Clear versioning**: Release history is clean and focused
- **Auto-updates**: Apps can check for updates easily
- **Better discoverability**: Users find releases immediately

## Version Numbering

We use [Semantic Versioning](https://semver.org/):

- **MAJOR.MINOR.PATCH** (e.g., 1.0.0)
- **MAJOR**: Breaking changes
- **MINOR**: New features (backwards compatible)
- **PATCH**: Bug fixes (backwards compatible)

## Security

### APK Verification

Always verify the APK before installing:

```bash
# Check SHA256 hash
sha256sum SwitchToolkit-v1.0.0.apk

# Compare with hash in release-info JSON or GitHub release notes
```

### Reporting Vulnerabilities

Please report security issues to:
- Email: security@crownparkcomputing.com (if available)
- Or create a private security advisory on GitHub

## License

MIT License - See [LICENSE](LICENSE) for details.

## Links

- **Main Development**: [SwitchToolkit](https://github.com/CrownParkComputing/SwitchToolkit)
- **Releases**: [switchtoolkitandroid](https://github.com/CrownParkComputing/switchtoolkitandroid)
- **Issues**: Report in this repository
- **Discussions**: Community support and questions

---

**Note**: This is an automated release repository. All development happens in the main SwitchToolkit repository.
