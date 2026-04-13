cask "gemmasight" do
  arch arm: "arm64", intel: "x64"

  version "1.4.3"
  sha256 arm:   "fed09dceb0245b876bf02a46dd8a454bb0902f3850db86d8ee69c6c73c2bf623",
         intel: "fed09dceb0245b876bf02a46dd8a454bb0902f3850db86d8ee69c6c73c2bf623"

  url "https://github.com/blue1st/gemma-sight/releases/download/v#{version}/gemmasight-#{version}.dmg"
  name "GemmaSight"
  desc "Real-time AI screen description app powered by Gemma 4"
  homepage "https://github.com/blue1st/gemma-sight"

  app "GemmaSight.app"

  installer script: {
    executable: "/usr/bin/xattr",
    args:       ["-rd", "com.apple.quarantine", "#{appdir}/GemmaSight.app"],
    sudo:       false,
  }

  zap trash: [
    "~/Library/Application Support/gemmasight",
    "~/Library/Logs/gemmasight",
    "~/Library/Preferences/com.gemmasight.app.plist",
    "~/Library/Saved Application State/com.gemmasight.app.savedState",
  ]
end
