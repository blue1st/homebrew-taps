cask "magi-system" do
  version "1.4.0"
  sha256 "21fc000bae8cd6eb0c0d0ff6da95e57fbcd96a405108b4cc32eb54b3f8f973fc"

  url "https://github.com/blue1st/electron-magi-system/releases/download/v#{version}/MAGI-System-1.4.0-mac.zip"
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
