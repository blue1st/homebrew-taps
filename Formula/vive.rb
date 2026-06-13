class Vive < Formula
  desc "Terminal session recorder and clean summary generator"
  homepage "https://github.com/blue1st/vive"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/blue1st/vive/releases/download/v#{version}/vive-#{version}-darwin-amd64.tar.gz"
      sha256 "bb3705e18b541e03ac53d24927885f042d69daa80091f3911330b4b920030df5"
    else
      url "https://github.com/blue1st/vive/releases/download/v#{version}/vive-#{version}-darwin-arm64.tar.gz"
      sha256 "1d07705fa102bd96560fdea9bc0e608835209cee9f95c33d11a6e1c3453d757d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/blue1st/vive/releases/download/v#{version}/vive-#{version}-linux-amd64.tar.gz"
      sha256 "52199a6ca4abd8d98c8d761183f9d3e30a43b5a3a772dad0c176ff20ff7b8dfa"
    else
      url "https://github.com/blue1st/vive/releases/download/v#{version}/vive-#{version}-linux-arm64.tar.gz"
      sha256 "91389e0908a9d3b0485ff128fb766ba7c488ff40500327e94961f5e01016001a"
    end
  end

  def install
    bin.install "vive"
    if OS.mac?
      system "xattr", "-c", "#{bin}/vive"
    end
  end

  test do
    system "#{bin}/vive", "status"
  end
end
