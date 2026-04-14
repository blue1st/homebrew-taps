cask "timesfm-sandbox" do
  arch arm: "-arm64", intel: ""
  version "0.2.7"
  sha256 arm:   "d98d2233aaf56195f3848ddcdf1fd40baab4fffaf2260e6da885b0845f5e9f00",
         intel: "333ae4a8d4c1f92d1c56a5cc1de50ff156a755127ee2743d6c6876af289d2273"

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
