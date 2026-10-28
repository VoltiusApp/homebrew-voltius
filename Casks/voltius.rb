cask "voltius" do
  arch arm: "aarch64", intel: "x64"

  version "0.64.1"
  sha256 arm:   "dba71efcce86de70794117cc7eeea786a66a3e937048257afdd3f158f18cbc95",
         intel: "4ad9cbee3616c6c5f7923b7eb42380beecf36263003c42aca4bb81e50afe1c53"

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
