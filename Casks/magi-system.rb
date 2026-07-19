cask "magi-system" do
  version "1.5.0"
  sha256 "2de2c57df44bf7e8df3c17c45493c3c000bccae0602aa694257fd617009a8949"

  url "https://github.com/blue1st/electron-magi-system/releases/download/v#{version}/MAGI-System-1.5.0-mac.zip"
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
