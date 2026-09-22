cask "kindle-glean" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.0"
  sha256 arm:   "52746efe6127e77b463db33b08e12a4c447786b8a8f96c0113cfa3699cd30a1a",
         intel: "52746efe6127e77b463db33b08e12a4c447786b8a8f96c0113cfa3699cd30a1a"

  url "https://github.com/blue1st/kindle-glean/releases/download/v#{version}/Kindle.Glean_#{version}_#{arch}.dmg"
  name "Kindle Glean"
  desc "Extract Kindle highlights, notes, and vocabulary to local Markdown"
  homepage "https://github.com/blue1st/kindle-glean"

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
