cask "voltius" do
  arch arm: "aarch64", intel: "x64"

  version "0.84.1"
  sha256 arm:   "eb679bc931a4c9886f6496b3d8277b8ab8dd2a20ee341bc383d0fba9f03c65fb",
         intel: "c73c988a2851401ec5e8cc119ed82cfae7050f7a01263d3c7a2e3e3a49d5b3b6"

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
