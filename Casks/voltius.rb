cask "voltius" do
  arch arm: "aarch64", intel: "x64"

  version "0.10.0"
  sha256 arm:   "661eb83b3f114060ea026ce7fc88701b99f54acf084617ef8caa520bfc80d483",
         intel: "2a0a9acf01504793166fb4560ee18c53eb7f3695c789421aaef47477e457fa99"

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
