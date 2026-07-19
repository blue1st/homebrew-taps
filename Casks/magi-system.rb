cask "magi-system" do
  version "1.7.0"
  sha256 "2e4db2fc990e4187b3c7feac5e20a8927b7402b16ca713858ea20584b45c4321"

  url "https://github.com/blue1st/electron-magi-system/releases/download/v#{version}/MAGI-System-1.7.0-mac.zip"
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
