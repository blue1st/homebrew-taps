cask "timesfm-sandbox" do
  arch arm: "-arm64", intel: ""
  version "0.2.2"
  sha256 arm:   "17d6d219d47941d758ffcf2cdc6d17eb893d1c95d3a1d19a152fcc0fa707f780",
         intel: "0c4ba2e4af54dbb9d2d84693648b05abd855f290d6904f033f951c810334a403"

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
