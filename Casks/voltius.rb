cask "voltius" do
  arch arm: "aarch64", intel: "x64"

  version "0.52.0"
  sha256 arm:   "a11aeb936472a1fd64bc4dee9ea07907f0f6a5bc0256f4c028852072eee71231",
         intel: "81141742ef2640143084e601ce7ba2cfd2cf9f9bd8bd3bbca579cd4d778e8850"

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
