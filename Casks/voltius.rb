cask "voltius" do
  arch arm: "aarch64", intel: "x64"

  version "0.80.0"
  sha256 arm:   "9c10043b096dbf1dd8d521997f5d907902f152a941527583bfe06fc86681f3d3",
         intel: "aa85242dabe236d7f09596d0791d8e9b0a22f7edab1862dc11c963b1fd42703e"

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
