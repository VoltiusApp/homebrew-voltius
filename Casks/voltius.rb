cask "voltius" do
  arch arm: "aarch64", intel: "x64"

  version "0.78.0"
  sha256 arm:   "efecb298898681531933f521e5444fd3ffce8e20a955508f0ea4218ce64e7444",
         intel: "d427caac85ca3a8dd00787140a872214a49f77ed977d4ab8a7b93ad2105a54aa"

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
