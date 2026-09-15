cask "voltius" do
  arch arm: "aarch64", intel: "x64"

  version "0.36.0"
  sha256 arm:   "1eee152209778a08d7e0c86642d77d662aa76eb81e2843dbc742ede811f59fcd",
         intel: "d9901f58d4c97fa1366446d374f2ec794df6770ef584dbf116370a63aabb2254"

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
