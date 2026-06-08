class Chronary < Formula
  desc "Official Chronary CLI"
  homepage "https://chronary.ai"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.5.0/chronary_0.5.0_darwin_arm64.tar.gz"
      sha256 "6f36dae06572c140ebf37004888f0db403be813b928c933d69e7ba3505681ac7"
    end
    on_intel do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.5.0/chronary_0.5.0_darwin_amd64.tar.gz"
      sha256 "4a8292752e1cc4cb1cffee242dab01695cd9c9f48dbfa9b3fd242f9af5e7f184"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.5.0/chronary_0.5.0_linux_arm64.tar.gz"
      sha256 "1ae1d5d33fe354c1c6c4ac196fe87e1585d9ec38b03318c94bdbed96f5b3a7d2"
    end
    on_intel do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.5.0/chronary_0.5.0_linux_amd64.tar.gz"
      sha256 "ae7a34516500e04923b582fdaa5e038ae87b1ed9801eca0a182ee6531cf48cc8"
    end
  end

  def install
    bin.install "chronary"
  end

  test do
    system "#{bin}/chronary", "--version"
  end
end
