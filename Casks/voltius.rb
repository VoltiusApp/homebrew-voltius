cask "voltius" do
  arch arm: "aarch64", intel: "x64"

  version "0.76.1"
  sha256 arm:   "8fc6bd60c04cf01cda760d2af51f70bd03706f3a148f7f56425f15d3c5fc1634",
         intel: "a64e299286fb9b4948445a8369155f246c472ffa81e2b890afb4aaa650a29eb3"

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
