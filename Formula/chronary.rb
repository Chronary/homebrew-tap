class Chronary < Formula
  desc "Official Chronary CLI"
  homepage "https://chronary.ai"
  version "0.12.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.12.0/chronary_0.12.0_darwin_arm64.tar.gz"
      sha256 "094531d3bbe1a5ecb59aa90c7cc3caed27b7c2bc8e35b176b617ebfa0ad4d1e1"
    end
    on_intel do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.12.0/chronary_0.12.0_darwin_amd64.tar.gz"
      sha256 "d8b00ec9cb5a5ca3bab641f5e5108ce828cb279e98118b412a71c507be92b3fa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.12.0/chronary_0.12.0_linux_arm64.tar.gz"
      sha256 "1dfbe74bad4fb10cdeb90a1d668b1f258408dc556d38f21219f2d8e28288b9c1"
    end
    on_intel do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.12.0/chronary_0.12.0_linux_amd64.tar.gz"
      sha256 "0dabebf064374e9a40351e945a138cfd6fde8e55b85863c862fb7b8de33d47a9"
    end
  end

  def install
    bin.install "chronary"
  end

  test do
    system "#{bin}/chronary", "--version"
  end
end
