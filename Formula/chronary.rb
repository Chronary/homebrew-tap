class Chronary < Formula
  desc "Official Chronary CLI"
  homepage "https://chronary.ai"
  version "0.5.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.5.3/chronary_0.5.3_darwin_arm64.tar.gz"
      sha256 "adee0abfb7a6c7d820454929b575570810ffc3864302fb4bb44abc5ac7495faf"
    end
    on_intel do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.5.3/chronary_0.5.3_darwin_amd64.tar.gz"
      sha256 "f536dd52aa1ee8ffbe129d4beabce68bab5e5f35a47dc3b191ee282cb6dda4d6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.5.3/chronary_0.5.3_linux_arm64.tar.gz"
      sha256 "2aff56c255a2e9da39f90c4ee05302e7ae3a7dfcbf41ee4160bce56e268abe3c"
    end
    on_intel do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.5.3/chronary_0.5.3_linux_amd64.tar.gz"
      sha256 "c0291157d7f8333bad6cfafa271383f62456c6fb0a43647d603991d5f7c0145b"
    end
  end

  def install
    bin.install "chronary"
  end

  test do
    system "#{bin}/chronary", "--version"
  end
end
