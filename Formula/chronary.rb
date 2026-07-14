class Chronary < Formula
  desc "Official Chronary CLI"
  homepage "https://chronary.ai"
  version "0.8.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.8.1/chronary_0.8.1_darwin_arm64.tar.gz"
      sha256 "16c8b68562ac91d9e591715f3fbf00ffc7cbbd5e18bc6378f3ba585b876c744e"
    end
    on_intel do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.8.1/chronary_0.8.1_darwin_amd64.tar.gz"
      sha256 "71799943edf6d43d2328a2fe2176e20d031dbcc0c07a21167e746bb5ed096f4d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.8.1/chronary_0.8.1_linux_arm64.tar.gz"
      sha256 "bb5a3f7042e2c1e620f14fec5d20a8ddc29cfea642af63df7c65be17aa0c8817"
    end
    on_intel do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.8.1/chronary_0.8.1_linux_amd64.tar.gz"
      sha256 "cc740002e1ca8cb519622f0c59bd553777f5b6fcd727130e319f4e99f1f1c0dd"
    end
  end

  def install
    bin.install "chronary"
  end

  test do
    system "#{bin}/chronary", "--version"
  end
end
