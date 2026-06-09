class Chronary < Formula
  desc "Official Chronary CLI"
  homepage "https://chronary.ai"
  version "0.5.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.5.1/chronary_0.5.1_darwin_arm64.tar.gz"
      sha256 "73d2c48ea836a99afd70555f2b358ac3a1894197dd94e6fb907159942c2fbc9d"
    end
    on_intel do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.5.1/chronary_0.5.1_darwin_amd64.tar.gz"
      sha256 "1049aa9c1b3f02aa956637222d8dc7cb11bf168f458d24f062e06657641440e8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.5.1/chronary_0.5.1_linux_arm64.tar.gz"
      sha256 "6aa22e59cf8c56caf104b310ea091e28acc465b8b4a6caf257c6e22332ea77d9"
    end
    on_intel do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.5.1/chronary_0.5.1_linux_amd64.tar.gz"
      sha256 "fc937628b27695b61e16c61a19c39f6162e5c7fe375bcbd4f6d81cf05929941f"
    end
  end

  def install
    bin.install "chronary"
  end

  test do
    system "#{bin}/chronary", "--version"
  end
end
