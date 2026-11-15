cask "voltius" do
  arch arm: "aarch64", intel: "x64"

  version "0.75.1"
  sha256 arm:   "9abfd65dd8a6be3e8420b0b1e0edaf7e76c5cf7f578c34095eff165a60c4a8e9",
         intel: "2af6052750d7c685ed2a0643a5847da9eaee59564756977b1ddb38f4925bfcb2"

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
