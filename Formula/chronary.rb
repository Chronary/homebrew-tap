class Chronary < Formula
  desc "Official Chronary CLI"
  homepage "https://chronary.ai"
  version "0.1.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.1.2/chronary_0.1.2_darwin_arm64.tar.gz"
      sha256 "01eaec457a0595aa1e1f963952534b1df7a0dfeac2e0cb41ddbb9447ee53fa43"
    end
    on_intel do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.1.2/chronary_0.1.2_darwin_amd64.tar.gz"
      sha256 "af4f40f2a66ab281e42b3d65aa22cf6b8f025aeca8593f586797aece8d4d4966"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.1.2/chronary_0.1.2_linux_arm64.tar.gz"
      sha256 "a26a052bc6bda5f4d7995c95cbc4259573d6a566d2699e1ac6d7c384da423511"
    end
    on_intel do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.1.2/chronary_0.1.2_linux_amd64.tar.gz"
      sha256 "c1364e79ab3689105ae31781c8a05f3039b31262bae3f40b79aae427be159876"
    end
  end

  def install
    bin.install "chronary"
  end

  test do
    system "#{bin}/chronary", "--version"
  end
end
