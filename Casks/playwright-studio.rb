cask "playwright-studio" do
  arch arm: "arm64", intel: "x64"

  version "0.0.7"
  sha256 arm:   "afb6b0e067f76da7fa4d946e1b579b1f8d8fe456a9a48d9ef83437626b3abf2f",
         intel: "ffc6fb717165cc8871bb67d02ca1157d09c78aa30c6f8acec7f4e994f96d18a0"

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
