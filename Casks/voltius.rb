cask "voltius" do
  arch arm: "aarch64", intel: "x64"

  version "0.38.2"
  sha256 arm:   "f424cb20a0f792803584e91570cc4e5af217bc4b2d3fc1d26953c8fa7b82c4c6",
         intel: "5fa326bcff6d11d3cc9f6d692ae9d8a392da9270d7cc76c6f446a5854df955b6"

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
