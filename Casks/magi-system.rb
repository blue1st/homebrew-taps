cask "magi-system" do
  version "1.6.0"
  sha256 "cec4af279ed021bece463ee50597414189a317f6dceb695bcf12250e1b9cc592"

  url "https://github.com/blue1st/electron-magi-system/releases/download/v#{version}/MAGI-System-1.6.0-mac.zip"
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
