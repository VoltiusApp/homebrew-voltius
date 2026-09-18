cask "voltius" do
  arch arm: "aarch64", intel: "x64"

  version "0.39.1"
  sha256 arm:   "477291f67336d62f6b6f40f0a9e4be40680e2999a0538652303a3b6e83a43a05",
         intel: "e03847e26097c1e117a9b548d2297c813d4c9da19d1f418c0f4bb9c794ac479e"

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
