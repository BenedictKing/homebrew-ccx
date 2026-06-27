cask "ccx-desktop" do
  arch arm: "arm64", intel: "amd64"
  version "2.9.20"
  sha256 arm:   "f06f7a5fdf7d752427b2dcbc79fd4c022b05a255350c65c0ecc3b81f75879e20",
         intel: "7682e5f313b91510895534525fd1b8ae414fe926b2ac2a38c981033273dc66fe"

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
