cask "napepro-helper" do
  version "1.0.5"
  sha256 "8cb9b39543e2c2c37e0c0aa8968c36fda4b1045519a73cb7347c02c6086aadc4"

  url "https://github.com/blue1st/NapeProHelper/releases/download/v#{version}/Nape.Pro.Helper_1.0.5_universal.dmg"
  name "Nape Pro Helper"
  desc "System tray companion helper application for Keychron Nape Pro trackball device"
  homepage "https://github.com/blue1st/NapeProHelper"

  app "Nape Pro Helper.app"

  postflight do
    system_command "xattr",
                   args: ["-cr", "#{appdir}/Nape Pro Helper.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/com.napepro.helper",
    "~/Library/Preferences/com.napepro.helper.plist",
    "~/Library/Saved Application State/com.napepro.helper.savedState",
  ]
end
