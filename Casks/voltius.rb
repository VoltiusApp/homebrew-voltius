cask "voltius" do
  arch arm: "aarch64", intel: "x64"

  version "0.83.1"
  sha256 arm:   "f897967555fc882976bb1b7889641e7553b008928711dc19a5f3ceba8b4b5e2d",
         intel: "ae09ef806ef20c2449379fcccaf83ac3df84fe31bdd1e4747c560e8d3d0622c4"

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
