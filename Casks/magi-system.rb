cask "magi-system" do
  version "1.12.0"
  sha256 "9d30414f9b0c2e8e31dfde2e7e56437a3ae8113d2be804a6362d558ff3496be4"

  url "https://github.com/blue1st/electron-magi-system/releases/download/v#{version}/MAGI-System-1.12.0-mac.zip"
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
