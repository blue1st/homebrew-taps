cask "danmaku-electron" do
  version "1.4.2"
  sha256 "6a441854adb9730b7bdd7e1f5a1b72d3d1b1c2db357caef338a380f37cc5ccea"

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
