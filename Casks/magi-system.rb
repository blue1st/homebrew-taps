cask "magi-system" do
  version "1.12.2"
  sha256 "234b62c6698d3aa337b293c9e24eab8f8d5941cf748b83e6aedbcf6fd9d284df"

  url "https://github.com/blue1st/electron-magi-system/releases/download/v#{version}/MAGI-System-1.12.2-mac.zip"
  name "MAGI System"
  desc "Tripartite Consensus AI Deliberation System for Electron"
  homepage "https://github.com/blue1st/electron-magi-system"

  app "MAGI System.app"

  caveats <<~EOS
    MAGI System is not notarized. If macOS blocks it from running, execute:
      xattr -cr "/Applications/MAGI System.app"
  EOS
end
