cask "voltius" do
  arch arm: "aarch64", intel: "x64"

  version "0.87.1"
  sha256 arm:   "8d44fd2865dbe9f32ed84b7b06e19be1adb656b27782ebc46228dff3c96c5bb7",
         intel: "913c0af46dae67f190b600cc4af47aec0f31633e3f1546adfb76a342655b7854"

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
