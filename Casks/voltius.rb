cask "voltius" do
  arch arm: "aarch64", intel: "x64"

  version "0.75.0"
  sha256 arm:   "de660a73442b21b66d23fb7b15b8a5a322116a34c8e4fc30e9bf3104f54eadcf",
         intel: "d64bf4ef5ce82a5352edb4b168141ce3d33c921ba26157a2235245973148a4a9"

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
