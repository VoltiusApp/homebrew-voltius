cask "voltius" do
  arch arm: "aarch64", intel: "x64"

  version "0.87.0"
  sha256 arm:   "e3a5f171275bd1775e5aee6bdefe12ab2b65b7c39eafd1b0da9b549975fb5bf4",
         intel: "9d39f467ffde613478590aed9a4021d810ec7e4e24c45f3a1d73b3e6736c0927"

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
