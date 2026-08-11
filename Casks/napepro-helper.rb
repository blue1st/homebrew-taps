cask "napepro-helper" do
  version "1.0.2"
  sha256 "914dbd5ea59d5a131706ba332e2574e26e9627a78ac3aef931e4e1e02c877078"

  url "https://github.com/blue1st/NapeProHelper/releases/download/v#{version}/Nape.Pro.Helper_#{version}_universal.dmg"
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
