cask "ccx-desktop" do
  arch arm: "arm64", intel: "amd64"
  version "2.8.24"
  sha256 arm:   "5784f76efe279948e4f00c1d44338abbe641c01eee9e886dbf56fb7bad3b46dc",
         intel: "0814e7d950c43b397de5c6728b4531a13a0ce5cdf38f7c7c1c861a8012be0ac0"

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
