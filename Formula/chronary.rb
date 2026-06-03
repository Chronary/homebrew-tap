class Chronary < Formula
  desc "Official Chronary CLI"
  homepage "https://chronary.ai"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.2.0/chronary_0.2.0_darwin_arm64.tar.gz"
      sha256 "319df182abcfe564f79f1730d068ed061f5cc3d4895372e0da92e334559804f7"
    end
    on_intel do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.2.0/chronary_0.2.0_darwin_amd64.tar.gz"
      sha256 "2e096c24b01218cf1a2f39db42fb094267ce851e503964c81af61ce5f4fdcfa5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.2.0/chronary_0.2.0_linux_arm64.tar.gz"
      sha256 "80cc0ec05790bf829878f3c2834ae20253c2924e6d68cbf60d51c52bc809636f"
    end
    on_intel do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.2.0/chronary_0.2.0_linux_amd64.tar.gz"
      sha256 "7098d992bed587901102c4370b136ad7a79d4cdf9785b0bb02579f20afa9074a"
    end
  end

  def install
    bin.install "chronary"
  end

  test do
    system "#{bin}/chronary", "--version"
  end
end
