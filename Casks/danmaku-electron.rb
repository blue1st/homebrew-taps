cask "danmaku-electron" do
  version "1.3.2"
  sha256 "2a3ba8caa6a854332a594a89314b6ae65d97eeb0ceac7d906fe7897da8327ad2"

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
