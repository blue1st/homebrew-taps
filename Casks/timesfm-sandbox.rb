cask "timesfm-sandbox" do
  arch arm: "-arm64", intel: ""
  version "0.2.1"
  sha256 arm:   "55cf63bc33618caa25df7767a425b70dac3a6a45766e649b2e16a71f4c6a77e2",
         intel: "39da588d42ac99b70a5d15400069d1cf8fee437c30b3b77f2b1ca80bd3359237"

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
