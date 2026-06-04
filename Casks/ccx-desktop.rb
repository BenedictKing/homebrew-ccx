cask "ccx-desktop" do
  arch arm: "arm64", intel: "amd64"
  version "2.8.23"
  sha256 arm:   "11b8994031203b8af9d016ff61d976cf8622584bbb21f736373f89d34291d9da",
         intel: "6eb352f722ad5d9bbce7c29fcc587a7a1d19a6066728fb02efb614b67d478fd7"

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
