cask "obsidian-quick-entry" do
  version "0.2.7"
  sha256 "d2e65198052e99de6c371f5a1d86cb9c268e81c38c719ef6d08dbee71433bd26"

  url "https://github.com/blue1st/obsidian-quick-entry/releases/download/v#{version}/Obsidian.Quick.Entry_#{version}_universal.dmg"
  name "Obsidian Quick Entry"
  desc "Obsidian quick entry widget for system tray"
  homepage "https://github.com/blue1st/obsidian-quick-entry"

  app "Obsidian Quick Entry.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "#{appdir}/Obsidian Quick Entry.app"]
  end

  zap trash: [
    "~/Library/Application Support/com.t-kawasaki.obsidian-quick-entry",
    "~/Library/Preferences/com.t-kawasaki.obsidian-quick-entry.plist",
    "~/Library/Saved Application State/com.t-kawasaki.obsidian-quick-entry.savedState",
  ]
end
