cask "voltius" do
  arch arm: "aarch64", intel: "x64"

  version "0.85.0"
  sha256 arm:   "e231d9204e2b85f1720beb2867f3239578d75ba906d0e6af75ef4980ee2f347e",
         intel: "5f0977e1aa05daeba2f94c046f2d2a9e0f906d214fa99f45a7b1d2214e1aa7bd"

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
