cask "timesfm-sandbox" do
  version "0.7.1"
  sha256 "78e745b7853c97f0ad6e78837653b6514c8287e662ac74682c77cd0a2169c6e0"

  url "https://github.com/blue1st/timesfm-sandbox/releases/download/v#{version}/TimesFM-Sandbox-#{version}-arm64.dmg"
  name "TimesFM Sandbox"
  desc "Time-Series Forecasting Sandbox based on TimesFM"
  homepage "https://github.com/blue1st/timesfm-sandbox"

  app "TimesFM Sandbox.app"

  # Only support Apple Silicon
  depends_on arch: :arm64

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
