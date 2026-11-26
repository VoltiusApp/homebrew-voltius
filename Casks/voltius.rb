cask "voltius" do
  arch arm: "aarch64", intel: "x64"

  version "0.86.0"
  sha256 arm:   "f0fce6b77099dffc2882cfc433991269b4fc6555c622fd25c78c292368fe4e22",
         intel: "b8ee262db2b12c1b84960b9a64cc67d6f6df250282f13bd0f9925c326e513273"

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
