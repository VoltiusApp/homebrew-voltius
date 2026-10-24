cask "voltius" do
  arch arm: "aarch64", intel: "x64"

  version "0.63.1"
  sha256 arm:   "f0a7da242f45f452063453a2dcb9445233935830e2dd6b0887cc039a24add4b8",
         intel: "f41d5cf6d0c9fdefcbf5521fe535c975efc0a5b632ca0ebd2777ce45f74a0948"

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
end
