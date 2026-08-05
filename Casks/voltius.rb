cask "voltius" do
  arch arm: "aarch64", intel: "x64"

  version "0.17.0"
  sha256 arm:   "ee25f4c5f826cbd18b9f7df00d281057ed7f4b1be6299d8e474a07a41b7d186e",
         intel: "396424185fec6ea82cdb4d6df00d28bff20853e9ffc2a55804a7647cb2c7e5ea"

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
