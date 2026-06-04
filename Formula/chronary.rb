class Chronary < Formula
  desc "Official Chronary CLI"
  homepage "https://chronary.ai"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.3.0/chronary_0.3.0_darwin_arm64.tar.gz"
      sha256 "0706d25f16d396116260c18e057145126051673df336c9777fdd243e4b5e4889"
    end
    on_intel do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.3.0/chronary_0.3.0_darwin_amd64.tar.gz"
      sha256 "edb6d9df9a045bbab157e8d0d11a9c8d29eec92076318ce9330f4b6dfc9b808a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.3.0/chronary_0.3.0_linux_arm64.tar.gz"
      sha256 "52e079cf4b8d2efed8518dcfb4c151d9b68f0ab1c361714a4e85974c4bd9c5d2"
    end
    on_intel do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.3.0/chronary_0.3.0_linux_amd64.tar.gz"
      sha256 "c5800fa9bf47fe0c45099705fae946cba0efa3bcfcb29e0820e5ed97f6dffefd"
    end
  end

  def install
    bin.install "chronary"
  end

  test do
    system "#{bin}/chronary", "--version"
  end
end
