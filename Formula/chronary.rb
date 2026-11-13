class Chronary < Formula
  desc "Official Chronary CLI"
  homepage "https://chronary.ai"
  version "0.10.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.10.0/chronary_0.10.0_darwin_arm64.tar.gz"
      sha256 "cc204a9683b04881081f5fe41d31da750d7c6ce14dcb106da0f3c180067226fa"
    end
    on_intel do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.10.0/chronary_0.10.0_darwin_amd64.tar.gz"
      sha256 "7c64bc62166e3375c0bd83336e1563b97dc1695f57e76a563ad9c98017d33b57"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.10.0/chronary_0.10.0_linux_arm64.tar.gz"
      sha256 "5f1d10c78f6ec1f992120a2a00e696eb35cbdf4365d840bdb65307ed9e17baae"
    end
    on_intel do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.10.0/chronary_0.10.0_linux_amd64.tar.gz"
      sha256 "84dd4e857eb7d63cb02aed273f69a53729321d67243ae7ec94838d1142799770"
    end
  end

  def install
    bin.install "chronary"
  end

  test do
    system "#{bin}/chronary", "--version"
  end
end
