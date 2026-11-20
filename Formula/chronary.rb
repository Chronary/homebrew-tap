class Chronary < Formula
  desc "Official Chronary CLI"
  homepage "https://chronary.ai"
  version "0.13.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.13.0/chronary_0.13.0_darwin_arm64.tar.gz"
      sha256 "8f9689ec56b31afbbd3bcb6c8eb98b093ee90c9b7585abaafc1dfac218f7b2d6"
    end
    on_intel do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.13.0/chronary_0.13.0_darwin_amd64.tar.gz"
      sha256 "2a80d55f6cfecdf12eb592b5800e927387a61eedac55c94bdca0b7cba774325b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.13.0/chronary_0.13.0_linux_arm64.tar.gz"
      sha256 "6178b71a5c4b1343448a44f531475f4b8b90d14f065c9f44f21218f658dac97e"
    end
    on_intel do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.13.0/chronary_0.13.0_linux_amd64.tar.gz"
      sha256 "7214eb26c95d09a610e4087f0244285a11945a85647595b8499d8080ee53f11a"
    end
  end

  def install
    bin.install "chronary"
  end

  test do
    system "#{bin}/chronary", "--version"
  end
end
