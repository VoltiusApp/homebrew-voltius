cask "voltius" do
  arch arm: "aarch64", intel: "x64"

  version "0.66.0"
  sha256 arm:   "51f59d84c46ec213982eded4709199f136ea8bb8172eacfd2f575aa555c7add6",
         intel: "0bf33ee5dd92823f50646fb3c25114134a313d96afc036f400477d421361321e"

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
end
