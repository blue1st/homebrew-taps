cask "obsidian-quick-entry" do
  version "0.2.9"
  sha256 "916873bdbf3ff3c828132330a2b2e400528cbe31870eaafbef653b47bd976f7e"

  url "https://github.com/blue1st/obsidian-quick-entry/releases/download/v#{version}/Obsidian.Quick.Entry_#{version}_universal.dmg"
  name "Obsidian Quick Entry"
  desc "Obsidian quick entry widget for system tray"
  homepage "https://github.com/blue1st/obsidian-quick-entry"

  app "Obsidian Quick Entry.app"

  caveats <<~EOS
    Obsidian Quick Entry is not notarized. If macOS blocks it from running, execute:
      xattr -cr "/Applications/Obsidian Quick Entry.app"
  EOS

  zap trash: [
    "~/Library/Application Support/com.t-kawasaki.obsidian-quick-entry",
    "~/Library/Preferences/com.t-kawasaki.obsidian-quick-entry.plist",
    "~/Library/Saved Application State/com.t-kawasaki.obsidian-quick-entry.savedState",
  ]
end
