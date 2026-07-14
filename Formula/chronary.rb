class Chronary < Formula
  desc "Official Chronary CLI"
  homepage "https://chronary.ai"
  version "0.8.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.8.0/chronary_0.8.0_darwin_arm64.tar.gz"
      sha256 "5ba146909ed9425fa834b00d73ab4ffe4aa4489fc828518fbcff52d2114a3ab6"
    end
    on_intel do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.8.0/chronary_0.8.0_darwin_amd64.tar.gz"
      sha256 "2d2f32078313bee41e861bbcb9c0e7a8136a63b775930ea67052ab7ec3aaa3cb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.8.0/chronary_0.8.0_linux_arm64.tar.gz"
      sha256 "73de0ac44a953dfdeab4acc5dd637b7254a6cd3301c6aaf617a7a6420eabf7c0"
    end
    on_intel do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.8.0/chronary_0.8.0_linux_amd64.tar.gz"
      sha256 "2e4695f40502361ab63d8b0674068580ee7498265896de3e6dbff19f826652a4"
    end
  end

  def install
    bin.install "chronary"
  end

  test do
    system "#{bin}/chronary", "--version"
  end
end
