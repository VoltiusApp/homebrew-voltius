cask "voltius" do
  arch arm: "aarch64", intel: "x64"

  version "0.82.0"
  sha256 arm:   "dbb57653e4c0795d3412ab8b1e7e4bf6352085be26ca9b94d3c2130b4ee66e5d",
         intel: "231f7a2ff883b7dfec10d664d13dd279e53d0d9192abf4eda455840d899d708d"

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
