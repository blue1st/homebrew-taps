cask "napepro-helper" do
  version "1.1.9"
  sha256 "912074a3b5c45a1242fdc02cb1410853d9eed962df89001525bbef1498e92602"

  url "https://github.com/blue1st/NapeProHelper/releases/download/v#{version}/Nape.Pro.Helper_1.1.9_universal.dmg"
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
