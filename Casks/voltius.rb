cask "voltius" do
  arch arm: "aarch64", intel: "x64"

  version "0.68.0"
  sha256 arm:   "2a7f4351524f7290104e8ee9007bccb2317e6e3ebd6e5e517f3189c7c79dda78",
         intel: "970970593527fc0c85207c2564bac2adbc125b44ffc24657e0b90db1780f8434"

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
