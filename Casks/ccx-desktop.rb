cask "ccx-desktop" do
  arch arm: "arm64", intel: "amd64"
  version "2.8.20"
  sha256 arm:   "77018b74dbb11f9887780c90e294a2f72b54929cf82b042ee19be6c9468a78a2",
         intel: "a8053b987bd3fcd4cbff27673a9aa7ac34e88cea2878fdea55d8425c6321615f"

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
