cask "voltius" do
  arch arm: "aarch64", intel: "x64"

  version "0.72.0"
  sha256 arm:   "18eb3d4618321cb876bb1f540192c88510c834e49f333a0f85ffa66e71ff008a",
         intel: "84b8718a697fc462620ef1968c5544fb9ba405b2e43169a1e4521b6aa3eff0d4"

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
