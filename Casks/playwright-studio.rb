cask "playwright-studio" do
  arch arm: "arm64", intel: "x64"

  version "0.0.8"
  sha256 arm:   "7a36e129c0ddc2ad1e971c52d2551134ec3eb842674e71637e65bd4d04ca5d2d",
         intel: "c83a5473dd71a0f8f2a0c57f2c4c756695f1bb294319864d56246ae031d3a006"

  url "https://github.com/blue1st/playwright-gui/releases/download/v#{version}/playwright-gui_#{version}_#{arch}.dmg"
  name "Playwright Studio"
  desc "Electron GUI for Playwright script recording and scheduling"
  homepage "https://github.com/blue1st/playwright-gui"

  app "Playwright Studio.app"

  postflight do
    system_command "xattr",
                   args: ["-cr", "#{appdir}/Playwright Studio.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/com.playwright.studio",
    "~/Library/Preferences/com.playwright.studio.plist",
    "~/Library/Saved Application State/com.playwright.studio.savedState",
  ]
end
