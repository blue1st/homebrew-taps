cask "danmaku-electron" do
  version "1.4.5"
  sha256 "4aa9199a4f048bb6088f04a3ac1e3d456516fadd1d21e48934632614de90d699"

  url "https://github.com/blue1st/danmaku-electron/releases/download/v#{version}/danmaku-electron-#{version}-arm64.dmg"
  name "Danmaku Electron"
  desc "AI Desktop Commentary Overlay"
  homepage "https://github.com/blue1st/danmaku-electron"

  app "DanmakuElectron.app"

  # Only support Apple Silicon (based on release assets)
  depends_on arch: :arm64

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/DanmakuElectron.app"],
                   sudo: false
    system_command "/usr/bin/codesign",
                   args: ["--force", "--deep", "--sign", "-", "#{appdir}/DanmakuElectron.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/DanmakuElectron",
    "~/Library/Preferences/com.example.danmaku.plist",
    "~/Library/Logs/DanmakuElectron",
  ]
end
