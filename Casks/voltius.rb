cask "voltius" do
  arch arm: "aarch64", intel: "x64"

  version "0.76.0"
  sha256 arm:   "3b11fa2efd0d57a30f2641883d1e4b03d34fed0efc71670ebd7b826b79d4a586",
         intel: "d4d38339131fa73b52fa765545cae9572ada5499e7d4cbc19931e9ab74acebcd"

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
