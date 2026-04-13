cask "gemmasight" do
  arch arm: "arm64", intel: "x64"

  version "1.5.3"
  sha256 arm:   "a0e1c3b5b25ea94f94a918f88bce7b0f19730c18313448d3a67cd4e0dd5eabf0",
         intel: "73d3eccf17aa22b4daff3a50d7126f8a86879529f62b2c323b900d37b7187915"

  url "https://github.com/blue1st/gemma-sight/releases/download/v#{version}/gemmasight-#{version}-#{arch}.dmg"
  name "GemmaSight"
  desc "Real-time AI screen description app powered by Gemma 4"
  homepage "https://github.com/blue1st/gemma-sight"

  app "GemmaSight.app"

  zap trash: [
    "~/Library/Application Support/gemmasight",
    "~/Library/Logs/gemmasight",
    "~/Library/Preferences/com.gemmasight.app.plist",
    "~/Library/Saved Application State/com.gemmasight.app.savedState",
  ]
end
