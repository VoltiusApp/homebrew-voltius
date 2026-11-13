cask "voltius" do
  arch arm: "aarch64", intel: "x64"

  version "0.71.0"
  sha256 arm:   "ed602eab3379a0b54a2ea19c11f5b71685e760eaec4cde7eceab4f05a323ebc7",
         intel: "0dc5733b434f02305e4634c7797b4c1d76f3f5db35141128176da8ac6c2ba153"

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
