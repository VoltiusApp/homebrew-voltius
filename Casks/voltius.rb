cask "voltius" do
  arch arm: "aarch64", intel: "x64"

  version "0.73.1"
  sha256 arm:   "d0d0a38586d1f9b5166e6a6e7586a070f97a467764f3bb9864511ca2cd06f6b2",
         intel: "c9fe83577b41f9c2d8292b3409ea50803b5d56f0e1365996c0b2e3c2209ec040"

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
