class Chronary < Formula
  desc "Official Chronary CLI"
  homepage "https://chronary.ai"
  version "0.13.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.13.1/chronary_0.13.1_darwin_arm64.tar.gz"
      sha256 "ba8cb2582d72e727309bef1594a57255bca6dc260457bb219885a28249b4b0f3"
    end
    on_intel do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.13.1/chronary_0.13.1_darwin_amd64.tar.gz"
      sha256 "63f138bf1485052958cb66cc14d76db632fc3140de8bec4de3534a57def4d0d6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.13.1/chronary_0.13.1_linux_arm64.tar.gz"
      sha256 "fef1e901d6b3cc38972fe953513ec25cb6f4fcb8c3e35ab58db3f83c5931d89c"
    end
    on_intel do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.13.1/chronary_0.13.1_linux_amd64.tar.gz"
      sha256 "d4ba739eff0ae6fd0251b9cfdd640c6615cf60fe6ac868b83c881c7126c19b77"
    end
  end

  def install
    bin.install "chronary"
  end

  test do
    system "#{bin}/chronary", "--version"
  end
end
