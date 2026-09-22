cask "playwright-studio" do
  arch arm: "arm64", intel: "x64"

  version "0.0.9"
  sha256 arm:   "830b8c224006acbde0d31cedd6f5de1dea540e5eeaa1c8cc2b91310dfe01c273",
         intel: "c9ed8dbb801cffd931fb549578b264e8297348fad0513234b9af8c98eecd3905"

  url "https://github.com/blue1st/playwright-gui/releases/download/v#{version}/playwright-gui_#{version}_#{arch}.dmg"
  name "Playwright Studio"
  desc "Electron GUI for Playwright script recording and scheduling"
  homepage "https://github.com/blue1st/playwright-gui"

  app "Playwright Studio.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/Playwright Studio.app"]
  end

  zap trash: [
    "~/Library/Application Support/com.playwright.studio",
    "~/Library/Preferences/com.playwright.studio.plist",
    "~/Library/Saved Application State/com.playwright.studio.savedState",
  ]
end
