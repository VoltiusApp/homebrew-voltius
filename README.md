# Voltius Homebrew Tap

Official Homebrew tap for [Voltius](https://voltius.app).

```sh
brew install --cask voltiusapp/voltius/voltius
```

Voltius is ad-hoc signed but not notarized. If macOS Gatekeeper blocks the first
launch, Control-click (right-click) the app and choose **Open**, then confirm.
You only need to do this once.

To clear the quarantine flag from an existing installation instead — including
when macOS calls the app **"damaged"** — run:

```sh
xattr -dr com.apple.quarantine /Applications/Voltius.app
```

The Cask is regenerated automatically on each Voltius release by CI in
[`VoltiusApp/voltius`](https://github.com/VoltiusApp/voltius).
