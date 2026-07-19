cask "magi-system" do
  version "1.3.4"
  sha256 "f7fcf41cfa68fd955270f51ec82a7065cf0c32df135b345472c5502c8f305cd8"

  url "https://github.com/blue1st/electron-magi-system/releases/download/v#{version}/MAGI-System-1.3.4-mac.zip"
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
