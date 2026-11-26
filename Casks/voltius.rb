cask "voltius" do
  arch arm: "aarch64", intel: "x64"

  version "0.85.1"
  sha256 arm:   "de21ccff29a9bc13ecc4ee748d9ae7f55b31ae6a53e964ff6bd96303250ae1cb",
         intel: "85f47a7955c648330806fc3eae39d3d9b78135d608cdc6a7a65d468d8971feab"

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
