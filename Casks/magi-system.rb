cask "magi-system" do
  version "1.1.0"
  sha256 "a5c2f2eb7edcbb43f99d5749b1cb30ee265aa158342caeaf52fd74c585e3bca5"

  url "https://github.com/blue1st/magi-system/releases/download/v#{version}/MAGI.System-#{version}-mac.zip"
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
