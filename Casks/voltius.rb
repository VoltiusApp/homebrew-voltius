cask "voltius" do
  arch arm: "aarch64", intel: "x64"

  version "0.53.0"
  sha256 arm:   "6bf56e4929c219f6dd897f935e0c39ea33c7dfaaf1a3d03de0e07336953ab6b9",
         intel: "f84a55019f6c6e89ce3c6d79fe42376e1c4afebdbc77bbacbc51dadde1423dc9"

  url "https://github.com/VoltiusApp/voltius/releases/download/v#{version}/Voltius_#{version}_#{arch}.dmg"
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
    Voltius is ad-hoc signed but not notarized, so on first launch macOS
    Gatekeeper will warn that the app cannot be checked for malware.

    Right-click (or Control-click) Voltius in Applications and choose Open, then
    confirm. You only need to do this once.

    To clear the quarantine flag from an existing installation instead, run:
      xattr -dr com.apple.quarantine /Applications/Voltius.app

    Voltius updates itself in-app after installation.
  CAVEATS
end
