cask "voltius" do
  arch arm: "aarch64", intel: "x64"

  version "0.77.0"
  sha256 arm:   "6ee58aea22a00a5a952bff1559fe8fe770b6aa1d3f52d4c3645962066c7f73c3",
         intel: "7729fcedd2a1ca56e9e8f1101a55bf120b17c46a140eb02a3ef1e4d06cd90665"

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
