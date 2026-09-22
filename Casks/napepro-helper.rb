cask "napepro-helper" do
  version "1.1.15"
  sha256 "e4b143af88a18f875d6eaffd5b59c0a99562b8b01f9b27659100292c9efa6dbe"

  url "https://github.com/blue1st/NapeProHelper/releases/download/v#{version}/Nape.Pro.Helper_1.1.15_universal.dmg"
  name "Nape Pro Helper"
  desc "System tray companion helper application for Keychron Nape Pro trackball device"
  homepage "https://github.com/blue1st/NapeProHelper"

  app "Nape Pro Helper.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "#{appdir}/Nape Pro Helper.app"]
  end

  zap trash: [
    "~/Library/Application Support/com.napepro.helper",
    "~/Library/Preferences/com.napepro.helper.plist",
    "~/Library/Saved Application State/com.napepro.helper.savedState",
  ]
end
