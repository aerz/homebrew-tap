# Homebrew Tap

Personal Homebrew tap.

## Apps

| App | Description |
| --- | --- |
| [Kaygan](https://github.com/aerz/Kaygan.app) | Mouse scrolling and side-button navigation |

## Usage

```sh
brew tap aerz/tap
brew trust --tap aerz/tap

brew install --cask kaygan
brew upgrade --cask kaygan
brew uninstall --cask kaygan
```

`brew trust --tap` trusts all current and future packages in this tap.

Open Kaygan from Applications and grant access in System Settings → Privacy & Security → Accessibility.

## Note on signing

Kaygan uses a self-signed certificate and is not notarized by Apple. The cask removes the app's quarantine attribute after installation and updates, so you do not need to run `xattr` manually.
