class Chronary < Formula
  desc "Official Chronary CLI"
  homepage "https://chronary.ai"
  version "0.11.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.11.0/chronary_0.11.0_darwin_arm64.tar.gz"
      sha256 "7e985f9716900db0d0429b7920f3a7ddffd25be23eb51c35559e9a030193b669"
    end
    on_intel do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.11.0/chronary_0.11.0_darwin_amd64.tar.gz"
      sha256 "62e0f536a578d669a7557485981a60cdf968618930f317307a0286ac1a8d2f5e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.11.0/chronary_0.11.0_linux_arm64.tar.gz"
      sha256 "42e715cbe8373944f5836be46527b76bb6888f4713cb5594f627c594b569a1ac"
    end
    on_intel do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.11.0/chronary_0.11.0_linux_amd64.tar.gz"
      sha256 "d3df4ace947e9081c3114d6692b25c741f18348c018cf1bd61a5041cf5943dff"
    end
  end

  def install
    bin.install "chronary"
  end

  test do
    system "#{bin}/chronary", "--version"
  end
end
