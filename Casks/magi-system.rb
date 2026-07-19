cask "magi-system" do
  version "1.2.0"
  sha256 "9f4bec88589ac390897d68e37c6130fbfc99ad6fa07c63a40a1107660767afd0"

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
