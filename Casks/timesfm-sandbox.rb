cask "timesfm-sandbox" do
  version "0.6.4"
  sha256 "f234bfdec42baea6a0486c019167d621221516dc91e1cf9b51859d5f8fadc4fe"

  url "https://github.com/blue1st/timesfm-sandbox/releases/download/v#{version}/TimesFM-Sandbox-#{version}-arm64.dmg"
  name "TimesFM Sandbox"
  desc "Time-Series Forecasting Sandbox based on TimesFM"
  homepage "https://github.com/blue1st/timesfm-sandbox"

  app "TimesFM Sandbox.app"

  # Only support Apple Silicon
  depends_on arch: :arm64

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/TimesFM Sandbox.app"],
                   sudo: false
    system_command "/usr/bin/codesign",
                   args: ["--force", "--deep", "--sign", "-", "#{appdir}/TimesFM Sandbox.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/com.blue1st.timesfm-sandbox",
    "~/Library/Preferences/com.blue1st.timesfm-sandbox.plist",
    "~/Library/Saved Application State/com.blue1st.timesfm-sandbox.savedState",
  ]
end
