cask "gemmasight" do
  arch arm: "arm64", intel: "x64"

  version "1.5.4"
  sha256 arm:   "9d2fd62334fd8d8dafb69e8339c7f1aaa64219cd0570a3c10c5a353260c09c89",
         intel: "4393c87136f2430c0bda3bb0ce45d9be2a247d40536815d8cdd7d45a71f48b4d"

  url "https://github.com/blue1st/gemma-sight/releases/download/v#{version}/gemmasight-#{version}-#{arch}.dmg"
  name "GemmaSight"
  desc "Real-time AI screen description app powered by Gemma 4"
  homepage "https://github.com/blue1st/gemma-sight"

  app "GemmaSight.app"
  
  postflight do
    system_command "xattr",
                   args: ["-cr", "#{appdir}/GemmaSight.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/gemmasight",
    "~/Library/Logs/gemmasight",
    "~/Library/Preferences/com.gemmasight.app.plist",
    "~/Library/Saved Application State/com.gemmasight.app.savedState",
  ]
end
