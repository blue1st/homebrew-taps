class Vive < Formula
  desc "Terminal session recorder and clean summary generator"
  homepage "https://github.com/blue1st/vive"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/blue1st/vive/releases/download/v#{version}/vive-#{version}-darwin-amd64.tar.gz"
      sha256 "59f2485b2bd0bd0392ca1a4120f1f2c97347e350d8fd2b59ec4808855cdf3035"
    else
      url "https://github.com/blue1st/vive/releases/download/v#{version}/vive-#{version}-darwin-arm64.tar.gz"
      sha256 "f06df602ae907d7ea1cc0b611a56f8cfa37ee232353860d313cd5a2d65127e58"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/blue1st/vive/releases/download/v#{version}/vive-#{version}-linux-amd64.tar.gz"
      sha256 "9e3c5b9be49bb89e4f3a5ce8e7f0b7105a13e3b035b9a8c28d8e41d41b45b4c1"
    else
      url "https://github.com/blue1st/vive/releases/download/v#{version}/vive-#{version}-linux-arm64.tar.gz"
      sha256 "d639ade8b35804d7dd16fa9f087cb4cde83b04f3a4af49e6ae6903b7f3ac32c1"
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
