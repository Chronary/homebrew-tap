class Chronary < Formula
  desc "Official Chronary CLI"
  homepage "https://chronary.ai"
  version "0.1.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.1.3/chronary_0.1.3_darwin_arm64.tar.gz"
      sha256 "87106de1ec3cb3963de05d42313b8e713221903ff4fab683576cb37bcf3e4c62"
    end
    on_intel do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.1.3/chronary_0.1.3_darwin_amd64.tar.gz"
      sha256 "3818cbbb4068f52b0f0897076277487cef4dd650ea2c2ee15cac37c172bb8c3b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.1.3/chronary_0.1.3_linux_arm64.tar.gz"
      sha256 "83a956592a4a1cdebd9a33acd79a6d8991bb4dd2183eabc8252f627e2adbf70d"
    end
    on_intel do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.1.3/chronary_0.1.3_linux_amd64.tar.gz"
      sha256 "3ce2cd7eca5f4f5ae05c85513e718db4a1fd6cf51b7fafa2637a86081b30c9cf"
    end
  end

  def install
    bin.install "chronary"
  end

  test do
    system "#{bin}/chronary", "--version"
  end
end
