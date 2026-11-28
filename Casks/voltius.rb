cask "voltius" do
  arch arm: "aarch64", intel: "x64"

  version "0.87.2"
  sha256 arm:   "7a29125ebe708f303e3e3a588d569e7c6d98e9e71f5b5dcf995b91ed09ffbf26",
         intel: "dd364f7aea4ee2c910d2f6bb534b339b26795fb34ad30d92655a0353a0c9f3d9"

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
