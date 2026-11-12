cask "voltius" do
  arch arm: "aarch64", intel: "x64"

  version "0.69.1"
  sha256 arm:   "6767e81957664c7f1fd49f51ceb120a5467739fa93eacbad9303c4bc920547cd",
         intel: "2a86af624acbf6f9971699fd243b9ac7eab8e15b7e3576d99f65c661b15a04af"

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
