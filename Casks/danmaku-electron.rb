cask "danmaku-electron" do
  version "1.4.6"
  sha256 "e6c305056314212c2091a278b2af57d294195a222d234a5631bd3d88a88e92d4"

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
