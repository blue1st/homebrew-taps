cask "gemmasight" do
  arch arm: "arm64", intel: "x64"

  version "1.5.5"
  sha256 arm:   "aa2023f41b2dcb875010c0b07a5068fad7ff9ff6463128ae8b398846a66a5f96",
         intel: "cf49a828bd057566ec2299ef7ece01aa8d63a30c2ca6561dd21328a52dd56ec9"

  url "https://github.com/blue1st/gemma-sight/releases/download/v#{version}/gemmasight-#{version}-#{arch}.dmg"
  name "GemmaSight"
  desc "Real-time AI screen description app powered by Gemma 4"
  homepage "https://github.com/blue1st/gemma-sight"

  app "GemmaSight.app"
  
  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "#{appdir}/GemmaSight.app"]
  end

  zap trash: [
    "~/Library/Application Support/gemmasight",
    "~/Library/Logs/gemmasight",
    "~/Library/Preferences/com.gemmasight.app.plist",
    "~/Library/Saved Application State/com.gemmasight.app.savedState",
  ]
end
