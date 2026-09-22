cask "kindle-glean" do
  version "0.2.3"
  sha256 "1593219e9a52e3889ebce63715711ec71fb3f3b2e6d10d1bb94f57a39af7451d"

  url "https://github.com/blue1st/kindle-glean/releases/download/v#{version}/Kindle.Glean_#{version}_aarch64.dmg"
  name "Kindle Glean"
  desc "Extract Kindle highlights, notes, and vocabulary to local Markdown"
  homepage "https://github.com/blue1st/kindle-glean"

  depends_on arch: :arm64

  app "Kindle Glean.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/Kindle Glean.app"]
    run "/usr/bin/codesign", args: ["--force", "--deep", "--sign", "-", "{{appdir}}/Kindle Glean.app"]
  end

  zap trash: [
    "~/Library/Application Support/com.kindleglean.app",
    "~/Library/Preferences/com.kindleglean.app.plist",
    "~/Library/Saved Application State/com.kindleglean.app.savedState",
    "~/Library/WebKit/com.kindleglean.app",
  ]
end
