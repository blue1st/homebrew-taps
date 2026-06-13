class Vive < Formula
  desc "Terminal session recorder and clean summary generator"
  homepage "https://github.com/blue1st/vive"
  version "0.1.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/blue1st/vive/releases/download/v#{version}/vive-#{version}-darwin-amd64.tar.gz"
      sha256 "84d62843de087132cfba30df038db5d9c87c9017e9998064b5dbd3bcb26cc845"
    else
      url "https://github.com/blue1st/vive/releases/download/v#{version}/vive-#{version}-darwin-arm64.tar.gz"
      sha256 "c777e6677a410accae740c3a8e062608b9aa5f5018f4b80d034c8dd63421acb0"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/blue1st/vive/releases/download/v#{version}/vive-#{version}-linux-amd64.tar.gz"
      sha256 "95785cebe94c53d0ef9dbd0c3642bfa6b772c7a089be0875ef12821475073ea0"
    else
      url "https://github.com/blue1st/vive/releases/download/v#{version}/vive-#{version}-linux-arm64.tar.gz"
      sha256 "14e8ffbd4cb86048082b4ac8443efdbf2d0e30ab851336a2fc9efe0da458a690"
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
