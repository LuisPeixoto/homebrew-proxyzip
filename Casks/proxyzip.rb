cask "proxyzip" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.0"
  sha256 arm:   "36e5b1a3790a04f51e63fbcdd3b0f6c0bce8b16a13effcdb179afa3ebfd2aa36",
         intel: "707bd5591ca583fbd80d9b7ace48a6368f293a78cdb5b772fd55b820138f9994"

  url "https://github.com/LuisPeixoto/ProxyZip/releases/download/v#{version}/ProxyZip_#{version}_#{arch}.dmg"
  name "ProxyZip"
  desc "Capture, inspect and debug HTTP(S) traffic"
  homepage "https://github.com/LuisPeixoto/ProxyZip"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "ProxyZip.app"

  zap trash: [
    "~/Library/Application Support/ProxyZip",
    "~/Library/Application Support/dev.proxyzip.app",
    "~/Library/Caches/dev.proxyzip.app",
    "~/Library/WebKit/dev.proxyzip.app",
  ]
end
