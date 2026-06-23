cask "ccx-desktop" do
  arch arm: "arm64", intel: "amd64"
  version "2.9.16"
  sha256 arm:   "aca6373f70d710ee718f03f59f791872a648ef98ceec265a940b6a7ad3c15dc5",
         intel: "dbfd78e277edca5214526bfd94f1bc6604553d00460db183b77c668460ed3bca"

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
