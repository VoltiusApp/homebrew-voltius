cask "voltius" do
  arch arm: "aarch64", intel: "x64"

  version "0.73.0"
  sha256 arm:   "794afbcebe43da2df124ebabb809a6d3459a708687cdcd35066ba7eb4981b6b7",
         intel: "27948ef458935984b7f704084bb0fa16627b2e8c38c248988b6c139a31693ca8"

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
