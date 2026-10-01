cask "voltius" do
  arch arm: "aarch64", intel: "x64"

  version "0.45.0"
  sha256 arm:   "834fd68a5e21bc16b155e64b15ee3052770cf321a4916ea72f17394f5506395b",
         intel: "7645f3d4ab2d8e38e1401fb7c21532a6a0ae5a1775f2e0abfce5a0fa8d0cbcc1"

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
