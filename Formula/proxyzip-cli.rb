class ProxyzipCli < Formula
  desc "Command-line debugging proxy: capture, inspect and debug HTTP(S) traffic"
  homepage "https://github.com/LuisPeixoto/ProxyZip"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/LuisPeixoto/ProxyZip/releases/download/v#{version}/proxyzip-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "ed31c76ee44dce553238abb5a04a10504a77bd57284c3f1a8643a46fea241346"
    end
    on_intel do
      url "https://github.com/LuisPeixoto/ProxyZip/releases/download/v#{version}/proxyzip-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "1b69b32789f7efef270954fd4bf0538128a95811c695d808c103910705b7c9d8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/LuisPeixoto/ProxyZip/releases/download/v#{version}/proxyzip-#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "83c7bad20469ee3a2eecd640c746cc1b2127474feeb25fe0dd21744029166bf4"
    end
    on_intel do
      url "https://github.com/LuisPeixoto/ProxyZip/releases/download/v#{version}/proxyzip-#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "eb9b058d22f0e1d8bbdb044c6fdd32ee94f80e3e25166ecaed54099e0f1c6183"
    end
  end

  def install
    bin.install "proxyzip"
  end

  test do
    assert_match "proxyzip", shell_output("#{bin}/proxyzip --version")
  end
end
