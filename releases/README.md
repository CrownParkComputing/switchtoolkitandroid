# Releases directory

This directory contains all APK releases.

## Files

- `latest.apk` - Always points to the most recent version
- `SwitchToolkit-v*.apk` - Versioned APK files
- `release-info-v*.json` - Metadata for each release

## Download

Users should download from:
- [GitHub Releases](https://github.com/CrownParkComputing/switchtoolkitandroid/releases/latest)
- Or directly: `releases/latest.apk`

## For Maintainers

New releases are automatically added by running:
```bash
./update-release.sh
```

See [MAINTAINER.md](../MAINTAINER.md) for details.
