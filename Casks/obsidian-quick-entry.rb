cask "obsidian-quick-entry" do
  version "0.1.24"
  sha256 "e6248b0f2798f9847a2084b0728d8905a154b2dcc2cca6d935e1d464eacb30ad"

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
