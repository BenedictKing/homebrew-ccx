cask "ccx-desktop" do
  arch arm: "arm64", intel: "amd64"
  version "2.9.11"
  sha256 arm:   "13036b60b3037fed24b805cab9c6f7bec0c9c6ecc4640782a0a2e3b2a1017643",
         intel: "0c46b5aa7ea1fc9c1d3f4ac33ad8bc1ae69e77d8dd7ce5d536ab8774dd077cb2"

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
