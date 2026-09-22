cask "playwright-studio" do
  arch arm: "arm64", intel: "x64"

  version "0.0.10"
  sha256 arm:   "caf0473e5e2cbb67910e709b9f856d6641147c73e1d75fb1aad30a6ac2c6bd99",
         intel: "442f48a7c68a9100f9d0ce8a4a8a9813ee0662bc7405ce611043f7d6ee94fc08"

  url "https://github.com/blue1st/playwright-gui/releases/download/v#{version}/playwright-gui_#{version}_#{arch}.dmg"
  name "Playwright Studio"
  desc "Electron GUI for Playwright script recording and scheduling"
  homepage "https://github.com/blue1st/playwright-gui"

  app "Playwright Studio.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "#{appdir}/Playwright Studio.app"]
  end

  zap trash: [
    "~/Library/Application Support/com.playwright.studio",
    "~/Library/Preferences/com.playwright.studio.plist",
    "~/Library/Saved Application State/com.playwright.studio.savedState",
  ]
end
