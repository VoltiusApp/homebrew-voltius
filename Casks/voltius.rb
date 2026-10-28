cask "voltius" do
  arch arm: "aarch64", intel: "x64"

  version "0.64.0"
  sha256 arm:   "96341588272a8e221bd1a1cf9b03b7501faea40de170f159567bd13c2fc104cb",
         intel: "8323d3a9c0f744e8dfd21b326df696a2db876f07e9709b65fde84df85e875721"

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
