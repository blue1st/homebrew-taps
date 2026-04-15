cask "timesfm-sandbox" do
  arch arm: "-arm64", intel: "-x64"
  version "0.5.0"
  sha256 arm:   "0137e524e2874275235fe94d0182b697e51d366a133497583ba6e0084dd31dca",
         intel: "01e70c38273d4d0c7dc4d78171c2e2ac747c9146673d3aa82c4438c240cc82af"

  url "https://github.com/blue1st/timesfm-sandbox/releases/download/v#{version}/TimesFM-Sandbox-#{version}#{arch}.dmg"
  name "TimesFM Sandbox"
  desc "Time-Series Forecasting Sandbox based on TimesFM"
  homepage "https://github.com/blue1st/timesfm-sandbox"

  app "TimesFM Sandbox.app"

  postflight do
    system_command "/usr/bin/find",
                   args: ["#{appdir}/TimesFM Sandbox.app", "-type", "f", "-exec", "xattr", "-c", "{}", ";"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/com.blue1st.timesfm-sandbox",
    "~/Library/Preferences/com.blue1st.timesfm-sandbox.plist",
    "~/Library/Saved Application State/com.blue1st.timesfm-sandbox.savedState",
  ]
end
