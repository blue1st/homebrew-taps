cask "magi-system" do
  version "1.8.0"
  sha256 "7ef350e13bd8b2de56c817b2d6149a64c13ba94ef3e2c10208afd6290cf7a12a"

  url "https://github.com/blue1st/electron-magi-system/releases/download/v#{version}/MAGI-System-1.8.0-mac.zip"
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
