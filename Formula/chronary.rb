class Chronary < Formula
  desc "Official Chronary CLI"
  homepage "https://chronary.ai"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.4.0/chronary_0.4.0_darwin_arm64.tar.gz"
      sha256 "91e0c6187f25fb6949be59f5be0de9540746419c666a637f7d2b7fd9b97f9d77"
    end
    on_intel do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.4.0/chronary_0.4.0_darwin_amd64.tar.gz"
      sha256 "4945314898608b02c4151a5cce1575c20e5a0f9b0581cfacfc27c97d68d72001"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.4.0/chronary_0.4.0_linux_arm64.tar.gz"
      sha256 "82245b1af2f74e1bafcd5df281dfeaa3109056bd72b1685c5963c1364a780256"
    end
    on_intel do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.4.0/chronary_0.4.0_linux_amd64.tar.gz"
      sha256 "3be5b4e77c18160ca25a3b1f758fbff8ed95122b5918af7df2e4dae61b218610"
    end
  end

  def install
    bin.install "chronary"
  end

  test do
    system "#{bin}/chronary", "--version"
  end
end
