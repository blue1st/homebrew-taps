cask "napepro-helper" do
  version "1.1.14"
  sha256 "36d356372b66d2b145c9c88e2121d92be890dc51a427e1163122adc79e27d6c1"

  url "https://github.com/blue1st/NapeProHelper/releases/download/v#{version}/Nape.Pro.Helper_1.1.14_universal.dmg"
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
