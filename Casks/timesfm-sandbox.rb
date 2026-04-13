cask "timesfm-sandbox" do
  arch arm: "-arm64", intel: ""
  version "0.0.2"
  sha256 arm:   "c85337a9624d54cd9059cbf2700e6f3048ca1211843bebe229f1295e73cdd6f7",
         intel: "1abade8fceb05259bf5fd063ee13ad49e224271b133a3819b4b6741f072be6a7"

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
