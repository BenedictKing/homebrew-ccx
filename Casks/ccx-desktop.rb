cask "ccx-desktop" do
  arch arm: "arm64", intel: "amd64"
  version "2.9.26"
  sha256 arm:   "629bdffd3d81b28c145fdf9bc6cb4fb1f0cf4785700e4b2aecf391ab6abcc609",
         intel: "49fe671c5d7da00fd5aac67dd7cb1f085af35423aa111cf3470ca330a3f139c2"

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
