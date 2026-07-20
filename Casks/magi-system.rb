cask "magi-system" do
  version "1.9.0"
  sha256 "3503397304874855b90a4444e085b84acebef25e6911a399a8ad5f8dd9218f27"

  url "https://github.com/blue1st/electron-magi-system/releases/download/v#{version}/MAGI-System-1.9.0-mac.zip"
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
