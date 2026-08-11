cask "voltius" do
  arch arm: "aarch64", intel: "x64"

  version "0.21.1"
  sha256 arm:   "c794053de11140bdaf79a87685d2a33e2b25076ed57d88ac05ab1b62b2bd12eb",
         intel: "ee634e4cd096eb5171f4d2578f8aa179106ac46b50d49edf3c4942f707e24c4d"

  url "https://github.com/VoltiusApp/voltius/releases/download/v#{version}/Voltius_#{version}_#{arch}.dmg",
      verified: "github.com/VoltiusApp/voltius/"
  name "Voltius"
  desc "Cross-platform SSH client and terminal"
  homepage "https://voltius.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

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
