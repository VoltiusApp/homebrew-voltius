cask "voltius" do
  arch arm: "aarch64", intel: "x64"

  version "0.74.0"
  sha256 arm:   "c3a310fd51760da9bd084bee34826b2f33501ad7404e4e6d4311f1d85846da95",
         intel: "b2de3bb06dc2bdd0a33c15f0b408965677796efe883ed146f612498773c1ff0e"

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
