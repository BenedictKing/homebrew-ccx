cask "ccx-desktop" do
  arch arm: "arm64", intel: "amd64"
  version "2.9.14"
  sha256 arm:   "932080930ffe408dfffbd7d074ea5f3fe6c7bbd098c38e525830c4297ad5f485",
         intel: "77e17abc6c41342270ae5a52eef53740d8f1738c981b509d0cbedf6432c2b691"

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
