class Chronary < Formula
  desc "Official Chronary CLI"
  homepage "https://chronary.ai"
  version "0.6.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.6.1/chronary_0.6.1_darwin_arm64.tar.gz"
      sha256 "9da7f50d7ad58098f5b56ab59a409378bbdfe6a5b6ae2219db03c2ecfc27c7aa"
    end
    on_intel do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.6.1/chronary_0.6.1_darwin_amd64.tar.gz"
      sha256 "f27ad7d6d58420bbc0907d0c74806266f73e28403dcc4e0f8ba7892539ac98cd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.6.1/chronary_0.6.1_linux_arm64.tar.gz"
      sha256 "d506e01c977fa83d9f6d3774cdc744a3cdf437a373d0e20a7cf4f43e68d195cf"
    end
    on_intel do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.6.1/chronary_0.6.1_linux_amd64.tar.gz"
      sha256 "9cb14bbc0f218501bce2dc36b526640994d6bce4a05caf3d1a43d6ef748af715"
    end
  end

  def install
    bin.install "chronary"
  end

  test do
    system "#{bin}/chronary", "--version"
  end
end
