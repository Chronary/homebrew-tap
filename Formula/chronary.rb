class Chronary < Formula
  desc "Official Chronary CLI"
  homepage "https://chronary.ai"
  version "0.7.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.7.0/chronary_0.7.0_darwin_arm64.tar.gz"
      sha256 "3fdb5e78608c9fcd937f5cd2be418c7ff55f637c97f8c32322304bef3ad91e52"
    end
    on_intel do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.7.0/chronary_0.7.0_darwin_amd64.tar.gz"
      sha256 "6e8ce658c2612dec1b5a0d539ea09bf39ac06b3f084382020eae978bf148bc2c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.7.0/chronary_0.7.0_linux_arm64.tar.gz"
      sha256 "3fd51d2d10cd2981a7ed2708dfa667b9ff12622dc957d11d791a8b5b7a651076"
    end
    on_intel do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.7.0/chronary_0.7.0_linux_amd64.tar.gz"
      sha256 "f6cebc2a68dde16f4c6fb22f5830567868432a84ff8cd066105ada24af713fa1"
    end
  end

  def install
    bin.install "chronary"
  end

  test do
    system "#{bin}/chronary", "--version"
  end
end
