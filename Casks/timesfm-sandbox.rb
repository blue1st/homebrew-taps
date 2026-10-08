cask "timesfm-sandbox" do
  version "0.7.3"
  sha256 "73a1a5a8357dfd95d22381f621efa75fdc73f6f118cf3831f23f5a8e89f77b40"

  url "https://github.com/blue1st/timesfm-sandbox/releases/download/v#{version}/TimesFM-Sandbox-#{version}-arm64.dmg"
  name "TimesFM Sandbox"
  desc "Time-Series Forecasting Sandbox based on TimesFM"
  homepage "https://github.com/blue1st/timesfm-sandbox"

  app "TimesFM Sandbox.app"

  # Only support Apple Silicon
  depends_on arch: :arm64

  caveats <<~EOS
    TimesFM Sandbox is not notarized. If macOS blocks it from running, execute:
      xattr -cr "/Applications/TimesFM Sandbox.app"
  EOS

  zap trash: [
    "~/Library/Application Support/com.blue1st.timesfm-sandbox",
    "~/Library/Preferences/com.blue1st.timesfm-sandbox.plist",
    "~/Library/Saved Application State/com.blue1st.timesfm-sandbox.savedState",
  ]
end
