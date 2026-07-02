cask "ccx-desktop" do
  arch arm: "arm64", intel: "amd64"
  version "2.9.27"
  sha256 arm:   "4dde835c4d95b9d07f34af495c1ade91d6571f46e25245cb67d1e1f0042a40d6",
         intel: "81a8900045ac84cc7401246c6e1be09a2c41596e6271646ff0b9a3917d8876e0"

  url "https://github.com/BenedictKing/ccx/releases/download/v#{version}/CCX-Desktop-#{version}-darwin-#{arch}.dmg",
      verified: "github.com/BenedictKing/ccx/"
  name "CCX Desktop"
  desc "Multi-upstream AI API proxy and protocol conversion gateway"
  homepage "https://github.com/BenedictKing/ccx"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :catalina

  app "CCX Desktop.app"
end
