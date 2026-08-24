# Voltius Homebrew Tap

Official Homebrew tap for [Voltius](https://voltius.app).

```sh
brew install --cask voltiusapp/voltius/voltius
```

Voltius is not yet signed/notarized. If macOS Gatekeeper blocks the first launch,
right-click the app and choose **Open**. To clear the quarantine flag from an
existing installation instead, run:

```sh
xattr -dr com.apple.quarantine /Applications/Voltius.app
```

The Cask is regenerated automatically on each Voltius release by CI in
[`VoltiusApp/voltius`](https://github.com/VoltiusApp/voltius).
