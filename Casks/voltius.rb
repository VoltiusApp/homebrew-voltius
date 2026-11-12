cask "voltius" do
  arch arm: "aarch64", intel: "x64"

  version "0.69.0"
  sha256 arm:   "678e23a1084f22d435da16a823a8b7e25cdb360867ad70db6e55bde10eb94e9b",
         intel: "a216af8e9f2069688ee4775a255399cb73736ef95fb09996a23f27395a13c4b0"

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
