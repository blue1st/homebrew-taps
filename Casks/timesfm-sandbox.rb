cask "timesfm-sandbox" do
  version "0.7.2"
  sha256 "b9513b42278e6763f084f8bb339076b1bef1886b55d2ab3ba311c9094d154754"

  url "https://github.com/blue1st/timesfm-sandbox/releases/download/v#{version}/TimesFM-Sandbox-#{version}-arm64.dmg"
  name "TimesFM Sandbox"
  desc "Time-Series Forecasting Sandbox based on TimesFM"
  homepage "https://github.com/blue1st/timesfm-sandbox"

  app "TimesFM Sandbox.app"

  # Only support Apple Silicon
  depends_on arch: :arm64

  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{appdir}/TimesFM Sandbox.app"]
    run "/usr/bin/codesign", args: ["--force", "--deep", "--sign", "-", "#{appdir}/TimesFM Sandbox.app"]
  end

  zap trash: [
    "~/Library/Application Support/com.blue1st.timesfm-sandbox",
    "~/Library/Preferences/com.blue1st.timesfm-sandbox.plist",
    "~/Library/Saved Application State/com.blue1st.timesfm-sandbox.savedState",
  ]
end
