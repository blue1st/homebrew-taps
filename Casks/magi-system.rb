cask "magi-system" do
  version "1.5.1"
  sha256 "269227a3bd370a5a742bfa96944b376f4390bd60a6001bda225a955f6fa2b0b4"

  url "https://github.com/blue1st/electron-magi-system/releases/download/v#{version}/MAGI-System-1.5.1-mac.zip"
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
