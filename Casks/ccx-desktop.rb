cask "ccx-desktop" do
  arch arm: "arm64", intel: "amd64"
  version "2.8.17"
  sha256 arm:   "01a3149094af28f917ed7c4eaca9f43a2d77a94494f2354276d7464109f2d95b",
         intel: "cdba1bfd30cae6164fbb3731e604ad0da31854bb567fa36900963b92f1daef42"

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
