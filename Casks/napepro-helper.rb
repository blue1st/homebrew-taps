cask "napepro-helper" do
  version "1.1.17"
  sha256 "31c1faad14593ae6c44ee0bdef50b0f5a4b84f377c7e25fcf256f02d0b0d04f7"

  url "https://github.com/blue1st/NapeProHelper/releases/download/v#{version}/Nape.Pro.Helper_1.1.17_universal.dmg"
  name "Nape Pro Helper"
  desc "System tray companion helper application for Keychron Nape Pro trackball device"
  homepage "https://github.com/blue1st/NapeProHelper"

  app "Nape Pro Helper.app"

  caveats <<~EOS
    Nape Pro Helper is not notarized. If macOS blocks it from running, execute:
      xattr -cr "/Applications/Nape Pro Helper.app"
  EOS

  zap trash: [
    "~/Library/Application Support/com.napepro.helper",
    "~/Library/Preferences/com.napepro.helper.plist",
    "~/Library/Saved Application State/com.napepro.helper.savedState",
  ]
end
