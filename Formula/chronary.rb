class Chronary < Formula
  desc "Official Chronary CLI"
  homepage "https://chronary.ai"
  version "0.13.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.13.2/chronary_0.13.2_darwin_arm64.tar.gz"
      sha256 "da63cf76b9f17c57220b0e647997e0957351f0cd0c3a57bac34f473ca34050df"
    end
    on_intel do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.13.2/chronary_0.13.2_darwin_amd64.tar.gz"
      sha256 "b6729c5abc37f9e55fe4e4053acbdea1b567307701b5a0982d6959a08fb0cb12"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.13.2/chronary_0.13.2_linux_arm64.tar.gz"
      sha256 "5f0f23a8ec20f82b8fddc27e57e708f8495785ea3ea99f1364d0471bf0a6e3e3"
    end
    on_intel do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.13.2/chronary_0.13.2_linux_amd64.tar.gz"
      sha256 "4f3449fd959d38d7af827500ebf701b583602b8f9318187912106d9ca2922632"
    end
  end

  def install
    bin.install "chronary"
  end

  test do
    system "#{bin}/chronary", "--version"
  end
end
