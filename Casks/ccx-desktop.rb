cask "ccx-desktop" do
  arch arm: "arm64", intel: "amd64"
  version "2.8.21"
  sha256 arm:   "8cee91ac886b0953bdd216a28682dd59e38cb7e46b5600362855ff66ea2729c2",
         intel: "af73461f6efa6be1002cf4b0534d799ae6a0b457be24816cbeb474c86b8e6257"

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
