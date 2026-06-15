class Vive < Formula
  desc "Terminal session recorder and clean summary generator"
  homepage "https://github.com/blue1st/vive"
  version "0.2.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/blue1st/vive/releases/download/v#{version}/vive-#{version}-darwin-amd64.tar.gz"
      sha256 "d7781a54b99422d30230ed5c18b16d198c2a3bc059e738694a8c15cbc4a2fe3f"
    else
      url "https://github.com/blue1st/vive/releases/download/v#{version}/vive-#{version}-darwin-arm64.tar.gz"
      sha256 "7ad3931da9144b2d4ca83afc89e695b92cf6150e401b1980b23f2e7dddb38fb5"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/blue1st/vive/releases/download/v#{version}/vive-#{version}-linux-amd64.tar.gz"
      sha256 "02349eec68ea1e0283b20300acb57cd6564b5159744059903cab801a7f4b38b4"
    else
      url "https://github.com/blue1st/vive/releases/download/v#{version}/vive-#{version}-linux-arm64.tar.gz"
      sha256 "b96f4ee97a5574365407231693ce6a3b7d27dd0430438c5c64fabc68b1498f72"
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
