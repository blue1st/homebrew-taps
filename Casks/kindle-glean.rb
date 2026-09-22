cask "kindle-glean" do
  version "0.2.1"
  sha256 "d3c59a79626b84862cbb511f62b6eb3ad14f859361961df1967ac7c60e7cba93"

  url "https://github.com/blue1st/kindle-glean/releases/download/v#{version}/Kindle.Glean_#{version}_aarch64.dmg"
  name "Kindle Glean"
  desc "Extract Kindle highlights, notes, and vocabulary to local Markdown"
  homepage "https://github.com/blue1st/kindle-glean"

  depends_on arch: :arm64

  app "Kindle Glean.app"

  postflight do
    system_command "xattr",
                   args: ["-cr", "#{appdir}/Kindle Glean.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/com.kindleglean.app",
    "~/Library/Preferences/com.kindleglean.app.plist",
    "~/Library/Saved Application State/com.kindleglean.app.savedState",
    "~/Library/WebKit/com.kindleglean.app",
  ]
end
