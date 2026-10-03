cask "voltius" do
  arch arm: "aarch64", intel: "x64"

  version "0.47.0"
  sha256 arm:   "3cc9795ced81c7c7d7eb511e9681a7dbd3a2e60df215f1ba689e33ef89e214e6",
         intel: "f02be5d5cf841b91aaccd95656a75745b4f1caad1e0681fb1fc776bdbd96117a"

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
