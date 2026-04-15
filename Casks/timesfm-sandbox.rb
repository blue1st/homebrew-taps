cask "timesfm-sandbox" do
  arch arm: "-arm64", intel: "-x64"
  version "0.4.2"
  sha256 arm:   "7f5455cacf77bc922832d335b05dce7c38359097a3ccab9489df2c8604b106db",
         intel: "5b75e7b0827b0b7fd9d8e098abc8e5f7afb942b779eafe8bd9d06532401ed090"

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
