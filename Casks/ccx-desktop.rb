cask "ccx-desktop" do
  arch arm: "arm64", intel: "amd64"
  version "2.9.8"
  sha256 arm:   "aed131f166b33d662c5d1a408e2ec93eec35db414df1e7dc7dd3c6bcc9a18abb",
         intel: "73b4e2c2de5586fdfedc8d2844cefe4c571d3c48aeb551a29ecfabefea0e5175"

  url "https://github.com/BenedictKing/ccx/releases/download/v#{version}/CCX-Desktop-#{version}-darwin-#{arch}.dmg",
      verified: "github.com/BenedictKing/ccx/"
  name "CCX Desktop"
  desc "Multi-upstream AI API proxy and protocol conversion gateway"
  homepage "https://github.com/BenedictKing/ccx"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "CCX Desktop.app"
end
