cask "ccx-desktop" do
  arch arm: "arm64", intel: "amd64"
  version "2.9.1"
  sha256 arm:   "52c6ebf298538178744174b20b6f0e5ee7508256961ec4a99ca0c8b4b98cb5cf",
         intel: "d91f8c87ce21064c81964d7f1bebc6df9e8851a49bb54e1edfa10ebdb56b40ab"

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
