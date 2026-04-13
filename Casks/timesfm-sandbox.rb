cask "timesfm-sandbox" do
  arch arm: "-arm64", intel: ""

  version "0.0.1"
  sha256 arm:   "08be2badc971145a72b2c857045e46372be0023589de1bd838c4ae34eb6d6c62",
         intel: "3a64887aa1dd5d3f1be54d0bea542d9888672ad2a7a30ccb9d4c97b4b4cfaeef"

  url "https://github.com/blue1st/timesfm-sandbox/releases/download/v#{version}/TimesFM-Sandbox-#{version}#{arch}.dmg"
  name "TimesFM Sandbox"
  desc "Time-Series Forecasting Sandbox based on TimesFM"
  homepage "https://github.com/blue1st/timesfm-sandbox"

  app "TimesFM Sandbox.app"

  postflight do
    system_command "xattr",
                   args: ["-cr", "#{appdir}/TimesFM Sandbox.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/com.blue1st.timesfm-sandbox",
    "~/Library/Preferences/com.blue1st.timesfm-sandbox.plist",
    "~/Library/Saved Application State/com.blue1st.timesfm-sandbox.savedState",
  ]
end
