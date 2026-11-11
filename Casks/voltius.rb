cask "voltius" do
  arch arm: "aarch64", intel: "x64"

  version "0.67.1"
  sha256 arm:   "85ed916e2d2fa5a760ebc87d115face1fbc5cd12a263b597837b6d09f81288b2",
         intel: "ef10deaa76654e7084b18b2c817e6e46800d78580a3a27b38e11402309072d2e"

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
