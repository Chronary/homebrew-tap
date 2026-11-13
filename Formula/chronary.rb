class Chronary < Formula
  desc "Official Chronary CLI"
  homepage "https://chronary.ai"
  version "0.10.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.10.1/chronary_0.10.1_darwin_arm64.tar.gz"
      sha256 "3692ee554905e0aa9029cdee85c88a6a307c1cef3da87e58d9cb117fd55aa6bb"
    end
    on_intel do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.10.1/chronary_0.10.1_darwin_amd64.tar.gz"
      sha256 "fa104c3e59ee9586655cb43502ec83891f24c73f4c3a2ea6c70b980b458adc65"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.10.1/chronary_0.10.1_linux_arm64.tar.gz"
      sha256 "88270e7bbbcab6797845120b1f305d7c8aa4ebc4a808e33153c6c302f580fe3c"
    end
    on_intel do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.10.1/chronary_0.10.1_linux_amd64.tar.gz"
      sha256 "e95a98c2bd9d56172406d94bb7f6f3baaf0439201b52172ad05a66f0214f2753"
    end
  end

  def install
    bin.install "chronary"
  end

  test do
    system "#{bin}/chronary", "--version"
  end
end
