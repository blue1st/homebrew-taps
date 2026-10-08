cask "playwright-studio" do
  arch arm: "arm64", intel: "x64"

  version "0.0.11"
  sha256 arm:   "2c24f633c9e1534b620a76a97b6bacb7c8871352f45a7175be4da124bd934624",
         intel: "e90c8aa0b3938938c6ac0213074b2d0cada511beb500352e5514ba6efe4ced82"

  url "https://github.com/blue1st/playwright-gui/releases/download/v#{version}/playwright-gui_#{version}_#{arch}.dmg"
  name "Playwright Studio"
  desc "Electron GUI for Playwright script recording and scheduling"
  homepage "https://github.com/blue1st/playwright-gui"

  app "Playwright Studio.app"

  caveats <<~EOS
    Playwright Studio is not notarized. If macOS blocks it from running, execute:
      xattr -cr "/Applications/Playwright Studio.app"
  EOS

  zap trash: [
    "~/Library/Application Support/com.playwright.studio",
    "~/Library/Preferences/com.playwright.studio.plist",
    "~/Library/Saved Application State/com.playwright.studio.savedState",
  ]
end
