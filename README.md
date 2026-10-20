# Homebrew Tap

Personal Homebrew tap.

## Setup

```sh
brew tap aerz/tap
brew trust --tap aerz/tap
```

`brew trust --tap` trusts all current and future packages in this tap.

## Kaygan

[Kaygan](https://github.com/aerz/Kaygan.app) lets you scroll by holding a mouse button and moving the mouse. Use side buttons to go back and forward.

```sh
brew install --cask kaygan
brew upgrade --cask kaygan
brew uninstall --cask kaygan
```

Open Kaygan from Applications and grant access in System Settings → Privacy & Security → Accessibility.

### Note on signing

Kaygan uses a self-signed certificate and is not notarized by Apple. The cask removes the app's quarantine attribute after installation and updates, so you do not need to run `xattr` manually.
