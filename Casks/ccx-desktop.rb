cask "ccx-desktop" do
  arch arm: "arm64", intel: "amd64"
  version "2.8.19"
  sha256 arm:   "b3874225330ac5e6b889c365d17839825eeeb270c41707bca182d36a63666643",
         intel: "ddacf8d23e03653987d646ce38e8cb216217cc902761f9a2e38eec0929c43a18"

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
