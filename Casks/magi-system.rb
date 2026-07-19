cask "magi-system" do
  version "1.3.2"
  sha256 "5fec788898a65a5d0297f1cc4fb3a295e2d1ed1a50a635c798783f753d96e634"

  url "https://github.com/blue1st/magi-system/releases/download/v#{version}/MAGI-System-1.3.2-mac.zip"
  name "MAGI System"
  desc "Tripartite Consensus AI Deliberation System for Electron"
  homepage "https://github.com/blue1st/magi-system"

  app "MAGI System.app"

  postflight do
    system_command "xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/MAGI System.app"],
                   sudo: false
  end
end
