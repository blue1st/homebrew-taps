cask "danmaku-electron" do
  version "1.4.4"
  sha256 "35d77ff05c87b571a46015c8c7dd9f3d904ea4dee60406f65de3f6cc3516aa9a"

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
