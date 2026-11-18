cask "voltius" do
  arch arm: "aarch64", intel: "x64"

  version "0.79.0"
  sha256 arm:   "9420647a8d30d979ab9f8ff7f7cae7ee827aaa7402fe2e21c01a08c823079732",
         intel: "542f44fe533a147284e0cc6748120b4cd8e5a46d4520bed52a9ce010611314ca"

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
