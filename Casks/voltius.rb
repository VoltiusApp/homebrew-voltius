cask "voltius" do
  arch arm: "aarch64", intel: "x64"

  version "0.70.0"
  sha256 arm:   "bd664d52f75d022c98096ef0d27c6f606869cac65ed0a63cbdb3f433f2d26623",
         intel: "e13b57fdf49b9dc680f3613cf8271b680b543c1cba3a9a6392935e6819ef0bdf"

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
