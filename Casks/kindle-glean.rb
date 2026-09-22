cask "kindle-glean" do
  version "0.2.6"
  sha256 "106ccedccb2ddc8018703fa23b0f4d1b233b57cfd6910ae503a7afdee34b42c9"

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
