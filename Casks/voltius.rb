cask "voltius" do
  arch arm: "aarch64", intel: "x64"

  version "0.84.0"
  sha256 arm:   "87b601437a39feb813fa1bf27d8b3af6fe319ee91e045fe398dc15e99a8e5e07",
         intel: "d157c2c68742f5c5689607e7812e08776edf6709a0b31497645a859b590cdebf"

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
