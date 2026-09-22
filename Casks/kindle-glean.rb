cask "kindle-glean" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.0"
  sha256 arm:   "a65336ee247166e9debac7a2f2f4dc6ad08601ef9fd41d9d530b94ebb6ec541b",
         intel: "a65336ee247166e9debac7a2f2f4dc6ad08601ef9fd41d9d530b94ebb6ec541b"

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
