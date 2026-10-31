cask "voltius" do
  arch arm: "aarch64", intel: "x64"

  version "0.65.0"
  sha256 arm:   "351a910e4609b8d7718f810a81a38dfb57cfe67b5c39d1b6012a88ac9dc4070b",
         intel: "0c62e54c3a762d72353ac838569637db1750e4575ebf356cdd31d0fa3aa86fc2"

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
