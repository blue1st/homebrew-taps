cask "magi-system" do
  version "1.3.3"
  sha256 "8ba229f7ae48e4b806d6d166154055ec5dde649c9d722c5b2a8405c146398d80"

  url "https://github.com/blue1st/magi-system/releases/download/v#{version}/MAGI-System-1.3.3-mac.zip"
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
