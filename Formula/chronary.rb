class Chronary < Formula
  desc "Official Chronary CLI"
  homepage "https://chronary.ai"
  version "0.10.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.10.2/chronary_0.10.2_darwin_arm64.tar.gz"
      sha256 "d683dbb5b3b87d0cb503620e9dc253d23ad6f407e84694721fac5c9733a94a57"
    end
    on_intel do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.10.2/chronary_0.10.2_darwin_amd64.tar.gz"
      sha256 "273b90d34df4fb23cb9882f3cd0990258642ab04bb5764494ff4dd3375b8cedc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.10.2/chronary_0.10.2_linux_arm64.tar.gz"
      sha256 "6db6909c07806847bba8463f709b432e94cc755634fbe90ed93bac4837abf440"
    end
    on_intel do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.10.2/chronary_0.10.2_linux_amd64.tar.gz"
      sha256 "dcaa9bd3b8040788aabee57c64a00552825306894bd743e73893e378c4d2bb8b"
    end
  end

  def install
    bin.install "chronary"
  end

  test do
    system "#{bin}/chronary", "--version"
  end
end
