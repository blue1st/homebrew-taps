cask "kindle-glean" do
  version "0.2.14"
  sha256 "5a64ddabf55456117db16624dda56cce6576a5c6fa848cf3d0f02ee564d03fcb"

  url "https://github.com/blue1st/kindle-glean/releases/download/v#{version}/Kindle.Glean_#{version}_aarch64.dmg"
  name "Kindle Glean"
  desc "Extract Kindle highlights, notes, and vocabulary to local Markdown"
  homepage "https://github.com/blue1st/kindle-glean"

  depends_on arch: :arm64

  app "Kindle Glean.app"

  caveats <<~EOS
    Kindle Glean is not notarized. If macOS blocks it from running, execute:
      xattr -cr "/Applications/Kindle Glean.app"
  EOS

  zap trash: [
    "~/Library/Application Support/com.kindleglean.app",
    "~/Library/Preferences/com.kindleglean.app.plist",
    "~/Library/Saved Application State/com.kindleglean.app.savedState",
    "~/Library/WebKit/com.kindleglean.app",
  ]
end
