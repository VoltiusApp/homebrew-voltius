cask "voltius" do
  arch arm: "aarch64", intel: "x64"

  version "0.34.5"
  sha256 arm:   "9f844f20d674412bc9f82c44469213431e983b48d3f260eac77cfb0846fc9793",
         intel: "da9fed756423b879f5fad12c5b7fad730466502537d749fba75abfaf1f5cc1dd"

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
