cask "gemmasight" do
  arch arm: "arm64", intel: "x64"

  version "1.5.6"
  sha256 arm:   "92534b315e5aaae2f223c965d931e5979bc6df86782bbc923d0f680325745590",
         intel: "823d16a31be39608b646db67960d80c5e228144154664af4a29f99efb9a26437"

  url "https://github.com/blue1st/gemma-sight/releases/download/v#{version}/gemmasight-#{version}-#{arch}.dmg"
  name "GemmaSight"
  desc "Real-time AI screen description app powered by Gemma 4"
  homepage "https://github.com/blue1st/gemma-sight"

  app "GemmaSight.app"

  caveats <<~EOS
    GemmaSight is not notarized. If macOS blocks it from running, execute:
      xattr -cr "/Applications/GemmaSight.app"
  EOS

  zap trash: [
    "~/Library/Application Support/gemmasight",
    "~/Library/Logs/gemmasight",
    "~/Library/Preferences/com.gemmasight.app.plist",
    "~/Library/Saved Application State/com.gemmasight.app.savedState",
  ]
end
