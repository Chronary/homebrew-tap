class Chronary < Formula
  desc "Official Chronary CLI"
  homepage "https://chronary.ai"
  version "0.9.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.9.1/chronary_0.9.1_darwin_arm64.tar.gz"
      sha256 "3083c2e1c06d19a30a86ef8df56034a556251fed65f930d91c898ddbdbae38ba"
    end
    on_intel do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.9.1/chronary_0.9.1_darwin_amd64.tar.gz"
      sha256 "d8bb5a7cf0acb91c860a20255eef2f76ee0e3a99a758f5db21b6835d4ed407fd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.9.1/chronary_0.9.1_linux_arm64.tar.gz"
      sha256 "ae5326a0fae398a189476275b7f43e75c1d728b2a441899798c53fe554811d37"
    end
    on_intel do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.9.1/chronary_0.9.1_linux_amd64.tar.gz"
      sha256 "5b319c62031889c63a57d2d8044a89ba92f787ef789c8899bc069a6a6f64b9ad"
    end
  end

  def install
    bin.install "chronary"
  end

  test do
    system "#{bin}/chronary", "--version"
  end
end
