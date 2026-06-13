class Vive < Formula
  desc "Terminal session recorder and clean summary generator"
  homepage "https://github.com/blue1st/vive"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/blue1st/vive/releases/download/v#{version}/vive-#{version}-darwin-amd64.tar.gz"
      sha256 "c92c8618705d8eff5a8d9e8e14a8d2fe89d5755633301c36ebd4f2aba4ab6aa5"
    else
      url "https://github.com/blue1st/vive/releases/download/v#{version}/vive-#{version}-darwin-arm64.tar.gz"
      sha256 "b41b7427415517bd481d785f1d98420dff58cc2505ed12562c0565cdb9bf8bd1"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/blue1st/vive/releases/download/v#{version}/vive-#{version}-linux-amd64.tar.gz"
      sha256 "0ae59682eb22efdc054355f4a4ee4eed9ed7d0548fc9df373c50bf920bbf4288"
    else
      url "https://github.com/blue1st/vive/releases/download/v#{version}/vive-#{version}-linux-arm64.tar.gz"
      sha256 "7e8fd5ae25995de7c7e162ed1d7e20ecfaf18a764a762ddc62c8212201227cf6"
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
