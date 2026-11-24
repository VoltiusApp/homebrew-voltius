cask "voltius" do
  arch arm: "aarch64", intel: "x64"

  version "0.83.0"
  sha256 arm:   "2bbe7cdfd919d92920bf49c9301533d453ace6a45788e7a7529eb2b874d6eb94",
         intel: "23f3001de9b2b7c3137c8e901f200eff0f0cb08f18670c13bc8a15fa6d031921"

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
