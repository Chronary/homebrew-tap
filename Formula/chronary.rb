class Chronary < Formula
  desc "Official Chronary CLI"
  homepage "https://chronary.ai"
  version "0.6.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.6.0/chronary_0.6.0_darwin_arm64.tar.gz"
      sha256 "d28ca672dcf762a29828d7e7ddd0c545b3d5d6e4e2067c1cb93e24d5dae378ab"
    end
    on_intel do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.6.0/chronary_0.6.0_darwin_amd64.tar.gz"
      sha256 "9b0c3bbadcd6dcd07f00d619244bc2ef2d2f38be080561c552baab39e6449275"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.6.0/chronary_0.6.0_linux_arm64.tar.gz"
      sha256 "cb0b45668b5142b773e998181f6078b35f47c52787ac7e12d127fceba77d8370"
    end
    on_intel do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.6.0/chronary_0.6.0_linux_amd64.tar.gz"
      sha256 "f00d3424f112542403b59fe0c873a253e6de8ee29ff57b8c07a256a3932b207e"
    end
  end

  def install
    bin.install "chronary"
  end

  test do
    system "#{bin}/chronary", "--version"
  end
end
