cask "timesfm-sandbox" do
  arch arm: "-arm64", intel: "-x64"
  version "0.2.10"
  sha256 arm:   "2a723031028943fb56ad8c1342fd61e011d36863b139fc4bbd96d2b57dcd3299",
         intel: "6e412068900affcbf87896babe21ac6010ce5fd7bb265cbae8bf4b965cec0906"

  url "https://github.com/blue1st/timesfm-sandbox/releases/download/v#{version}/TimesFM-Sandbox-#{version}#{arch}.dmg"
  name "TimesFM Sandbox"
  desc "Time-Series Forecasting Sandbox based on TimesFM"
  homepage "https://github.com/blue1st/timesfm-sandbox"

  app "TimesFM Sandbox.app"

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
