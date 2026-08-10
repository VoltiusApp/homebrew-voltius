cask "voltius" do
  arch arm: "aarch64", intel: "x64"

  version "0.20.0"
  sha256 arm:   "5947c0ac7452eb431297b5324980c2410ce00253846f67c5628e2a082b41252d",
         intel: "8aa8e64ea5fec3ccab1ac50f33611d14af65a78ea6f3376e28bf4abee15faf35"

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
