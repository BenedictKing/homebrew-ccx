cask "ccx-desktop" do
  arch arm: "arm64", intel: "amd64"
  version "2.9.3"
  sha256 arm:   "c55559dba36cf1d1b510ea1c89bad44cf16b870631fb2767ea12cfd84db28725",
         intel: "37beeb177fce5fe1cd128165559979c7d2593b16286446422762dd3d12d2b22d"

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
