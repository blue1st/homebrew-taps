cask "napepro-helper" do
  version "1.1.16"
  sha256 "46ced921f209d6625c82a3c33b5b28916d58b6aa7f429b4b5a2a265beeb5711e"

  url "https://github.com/blue1st/NapeProHelper/releases/download/v#{version}/Nape.Pro.Helper_1.1.16_universal.dmg"
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
