cask "magi-system" do
  version "1.10.0"
  sha256 "f58eaeb55db8962143ab3909b0c51b80bf464edf6f0e0ce1bb277f7db16e3d51"

  url "https://github.com/blue1st/electron-magi-system/releases/download/v#{version}/MAGI-System-1.10.0-mac.zip"
  name "MAGI System"
  desc "Tripartite Consensus AI Deliberation System for Electron"
  homepage "https://github.com/blue1st/electron-magi-system"

  app "MAGI System.app"

  postflight do
    system_command "xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/MAGI System.app"],
                   sudo: false
  end
end
