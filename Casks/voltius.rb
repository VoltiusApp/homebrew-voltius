cask "voltius" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.0"
  sha256 arm:   "0c88cfe4937ca99cbd80b29b3b2d6d433281e47e1cbe791fc8ba4a6cccc5a3e4",
         intel: "627a222657079612c1f3296c84d17f7c1dbd6df395d69defcf5577c88baaea8b"

  url "https://github.com/VoltiusApp/voltius/releases/download/v#{version}/Voltius_#{version}_#{arch}.dmg"
  name "Voltius"
  desc "Cross-platform SSH client and terminal"
  homepage "https://voltius.app"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Voltius.app"

  caveats <<~CAVEATS
    Voltius is not yet signed or notarized, so on first launch macOS Gatekeeper
    will warn that the app cannot be checked for malware.

    Right-click (or Control-click) Voltius in Applications and choose Open, then
    confirm. You only need to do this once.

    To skip the warning entirely, install with:
      brew install --cask --no-quarantine voltiusapp/voltius/voltius

    Voltius updates itself in-app after installation.
  CAVEATS
end
