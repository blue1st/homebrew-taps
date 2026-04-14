cask "timesfm-sandbox" do
  arch arm: "-arm64", intel: ""
  version "0.2.4"
  sha256 arm:   "df53d1e630c3e1e023dc8eaf1faa6e39efcabfed81ee3d05d2133e975cea6ee4",
         intel: "66ea79f84e9e3216855bf9f65091c5b63e5ffd61f2b0df81b98afca746e1ced0"

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
