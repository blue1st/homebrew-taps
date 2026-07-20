cask "magi-system" do
  version "1.11.0"
  sha256 "62e2287474241f82b583a04639cc8722d5d999539de2d8ef880104fbf0a61cf1"

  url "https://github.com/blue1st/electron-magi-system/releases/download/v#{version}/MAGI-System-1.11.0-mac.zip"
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
