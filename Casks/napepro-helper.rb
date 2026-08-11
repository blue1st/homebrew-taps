cask "napepro-helper" do
  version "1.0.4"
  sha256 "7eb7625c77869e1f2ddaa6a55f1e8dcbb63582cc4c4a232aca7bdc9eff867e28"

  url "https://github.com/blue1st/NapeProHelper/releases/download/v#{version}/Nape.Pro.Helper_1.0.4_universal.dmg"
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
