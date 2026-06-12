cask "obsidian-quick-entry" do
  version "0.1.35"
  sha256 "43d857e86f1b2c66be5a6534ba7c3c8ba9371494b9fc82d4a05b5584aab43edc"

  url "https://github.com/blue1st/obsidian-quick-entry/releases/download/v#{version}/Obsidian.Quick.Entry_#{version}_universal.dmg"
  name "Obsidian Quick Entry"
  desc "Obsidian quick entry widget for system tray"
  homepage "https://github.com/blue1st/obsidian-quick-entry"

  app "Obsidian Quick Entry.app"

  postflight do
    system_command "xattr",
                   args: ["-cr", "#{appdir}/Obsidian Quick Entry.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/com.t-kawasaki.obsidian-quick-entry",
    "~/Library/Preferences/com.t-kawasaki.obsidian-quick-entry.plist",
    "~/Library/Saved Application State/com.t-kawasaki.obsidian-quick-entry.savedState",
  ]
end
