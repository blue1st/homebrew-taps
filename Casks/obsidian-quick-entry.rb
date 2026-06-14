cask "obsidian-quick-entry" do
  version "0.1.36"
  sha256 "a77ca03a0e19fcaccf7e2a274547bf72c0f7bb05f977d7dcc9b22b9061d600ff"

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
