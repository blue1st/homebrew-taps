cask "playwright-studio" do
  arch arm: "arm64", intel: "x64"

  version "0.0.6"
  sha256 arm:   "761abc392b651496cd18520e74146270383c600723e6754d7191da7ff347850a",
         intel: "61a5d5fe7a751cd635e66e00d8823d155f1dd328c2b2a6bd6da6ec5d141bf488"

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
