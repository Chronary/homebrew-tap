class Chronary < Formula
  desc "Official Chronary CLI"
  homepage "https://chronary.ai"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.1.1/chronary_0.1.1_darwin_arm64.tar.gz"
      sha256 "ba9adac340ef712a47f5385e94be896f65c4da18acc20185ba3ae89693619612"
    end
    on_intel do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.1.1/chronary_0.1.1_darwin_amd64.tar.gz"
      sha256 "228951c296f187b2e8db7233d3ff38f5d3ffb2064c06163ad30f0ee6a919560d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.1.1/chronary_0.1.1_linux_arm64.tar.gz"
      sha256 "28d34fe482fb5f353fa22eefc6e8e18322287b93067640708d33685da4b3dde1"
    end
    on_intel do
      url "https://github.com/Chronary/chronary-cli/releases/download/v0.1.1/chronary_0.1.1_linux_amd64.tar.gz"
      sha256 "02061417068df996b56298ca8ba7ab8062770b41af7526b915ee84183511fefb"
    end
  end

  def install
    bin.install "chronary"
  end

  test do
    system "#{bin}/chronary", "--version"
  end
end
