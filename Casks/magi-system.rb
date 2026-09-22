cask "magi-system" do
  version "1.12.1"
  sha256 "1c550bef5bfbf58b8bfe34d1239e22205614cab77d360702d9477d0e37ff275b"

  url "https://github.com/blue1st/electron-magi-system/releases/download/v#{version}/MAGI-System-1.12.1-mac.zip"
  name "MAGI System"
  desc "Tripartite Consensus AI Deliberation System for Electron"
  homepage "https://github.com/blue1st/electron-magi-system"

  app "MAGI System.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{appdir}/MAGI System.app"]
  end
end
