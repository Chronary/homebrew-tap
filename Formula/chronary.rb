class Chronary < Formula
  desc "Official Chronary CLI"
  homepage "https://chronary.ai"
  version "0.5.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.5.2/chronary_0.5.2_darwin_arm64.tar.gz"
      sha256 "26f89b4f1cac390a5cf3c6203181967a6ccd3c7c017b6e445e84e9a070fc273e"
    end
    on_intel do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.5.2/chronary_0.5.2_darwin_amd64.tar.gz"
      sha256 "a11ff52d0a854d0ff80d9f06362777750450154d39e74abcc334627239c67c9b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.5.2/chronary_0.5.2_linux_arm64.tar.gz"
      sha256 "228401bfbf0bfa6ed60a28a45d07ad95333e0b286a0f43716da32f4dee053d31"
    end
    on_intel do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.5.2/chronary_0.5.2_linux_amd64.tar.gz"
      sha256 "a4d77434ab42b24bb227d1fe95cafc0cd7a9000140e14b25d7363ffc702a9551"
    end
  end

  def install
    bin.install "chronary"
  end

  test do
    system "#{bin}/chronary", "--version"
  end
end
