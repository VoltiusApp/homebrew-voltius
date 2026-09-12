cask "voltius" do
  arch arm: "aarch64", intel: "x64"

  version "0.34.1"
  sha256 arm:   "0c5e900e4c5136cbfdfd925e13f23cdd3698bc5f029a4dbdc0eb0d75e485ee6d",
         intel: "a3a7a41fc5fe0b7c9498f76ff99c3b5e75cec71a259af38bd5910e0cab08ba0f"

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
