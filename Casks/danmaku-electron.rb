cask "danmaku-electron" do
  version "1.2.4"
  sha256 "6388f047f22282e9e0e75635c79a67f1937ae70e19fc95dea2c9c39cc2f5d745"

  url "https://github.com/blue1st/danmaku-electron/releases/download/v#{version}/danmaku-electron-#{version}-arm64.dmg"
  name "Danmaku Electron"
  desc "AI Desktop Commentary Overlay"
  homepage "https://github.com/blue1st/danmaku-electron"

  app "danmaku-electron.app"

  # Only support Apple Silicon (based on release assets)
  depends_on arch: :arm64

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/danmaku-electron.app"],
                   sudo: false
    system_command "/usr/bin/codesign",
                   args: ["--force", "--deep", "--sign", "-", "#{appdir}/danmaku-electron.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/danmaku-electron",
    "~/Library/Preferences/com.example.danmaku.plist",
    "~/Library/Logs/danmaku-electron",
  ]
end
