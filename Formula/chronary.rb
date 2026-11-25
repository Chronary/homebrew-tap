class Chronary < Formula
  desc "Official Chronary CLI"
  homepage "https://chronary.ai"
  version "0.14.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.14.0/chronary_0.14.0_darwin_arm64.tar.gz"
      sha256 "63e0c168a588d4a3afa0dcca8c04e57c1fc44a2e65725851908e6df160edac9c"
    end
    on_intel do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.14.0/chronary_0.14.0_darwin_amd64.tar.gz"
      sha256 "254f00475404e4ec87bcc9e1c64a901f254a3eca9e791c0f3d5415c8c4d97516"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.14.0/chronary_0.14.0_linux_arm64.tar.gz"
      sha256 "db0be09de13ae7d1d85a2af80c8bc91e94ec10dac73465e1e5a324d0e51cfde7"
    end
    on_intel do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.14.0/chronary_0.14.0_linux_amd64.tar.gz"
      sha256 "d9307a5d9e755a77dd7373366eb44de758eb680fca212a34d5a741ac7de127cf"
    end
  end

  def install
    bin.install "chronary"
  end

  test do
    system "#{bin}/chronary", "--version"
  end
end
