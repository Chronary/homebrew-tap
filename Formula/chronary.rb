class Chronary < Formula
  desc "Official Chronary CLI"
  homepage "https://chronary.ai"
  version "0.14.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.14.1/chronary_0.14.1_darwin_arm64.tar.gz"
      sha256 "fbf45d7f9a8d62e277b37d618f7cea61eabfe93b8fbd8882da6a59edefa882b3"
    end
    on_intel do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.14.1/chronary_0.14.1_darwin_amd64.tar.gz"
      sha256 "89ee3ac8e6cdf7d417237146a0098efbe3391aa275f4d044142784b39debaa9d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.14.1/chronary_0.14.1_linux_arm64.tar.gz"
      sha256 "0ce159b481554299727674a14664df3a55160415cbcd9babb1e8fcfd8083113d"
    end
    on_intel do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.14.1/chronary_0.14.1_linux_amd64.tar.gz"
      sha256 "e1e7ed734db8f65e3868ceb85fae95f866f081789be0e0487ecbbc54e6b7a66b"
    end
  end

  def install
    bin.install "chronary"
  end

  test do
    system "#{bin}/chronary", "--version"
  end
end
