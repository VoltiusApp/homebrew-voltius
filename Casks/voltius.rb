cask "voltius" do
  arch arm: "aarch64", intel: "x64"

  version "0.9.3"
  sha256 arm:   "9e279e06854d5a49fcfd2b76e6c1fdcf10d13a1c29d467329066f1d31aa95077",
         intel: "415eda4529b0eeb5db01b87eceedecb9b73c80f853e7f0d6674a0242f8d2f52f"

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
