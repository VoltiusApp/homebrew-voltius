cask "voltius" do
  arch arm: "aarch64", intel: "x64"

  version "0.81.0"
  sha256 arm:   "6bcba65dc54891b1702e82a26c6f9397df80cb399ada931c252ec7a45e072a84",
         intel: "7619e46667c96c43bbb501ecaa70e6fb816756f91bb40f1fa018d65f583f2383"

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
  binary "#{appdir}/Voltius.app/Contents/MacOS/voltius-cli"
end
