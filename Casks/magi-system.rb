cask "magi-system" do
  version "1.3.0"
  sha256 "64df9700f9898d408e03eaca42920f4f486d8af329d6e88794873975a5a629fe"

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
