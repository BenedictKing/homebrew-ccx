# Homebrew Tap for CCX Desktop

This repository is a [Homebrew Tap](https://docs.brew.sh/Taps) providing
macOS desktop builds of CCX.

```bash
brew tap BenedictKing/ccx
brew install --cask ccx-desktop
```

## Updating

```bash
brew update
brew upgrade --cask ccx-desktop
```

## Automation

`Casks/ccx-desktop.rb` is automatically updated after a stable release is
published in `BenedictKing/ccx`. The main repository sends a
`repository_dispatch` event to this Tap, and the `Update Cask` workflow
replaces the Cask file with the new version and checksums.
