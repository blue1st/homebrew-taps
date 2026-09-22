cask "danmaku-electron" do
  version "1.4.7"
  sha256 "8e5c6813b3f3e06c4e93ee37d6bedbdaa96a977259206e1012f63514dd754c6c"

  url "https://github.com/blue1st/danmaku-electron/releases/download/v#{version}/danmaku-electron-#{version}-arm64.dmg"
  name "Danmaku Electron"
  desc "AI Desktop Commentary Overlay"
  homepage "https://github.com/blue1st/danmaku-electron"

  app "DanmakuElectron.app"

  # Only support Apple Silicon (based on release assets)
  depends_on arch: :arm64

  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{appdir}/DanmakuElectron.app"]
    run "/usr/bin/codesign", args: ["--force", "--deep", "--sign", "-", "#{appdir}/DanmakuElectron.app"]
  end

  zap trash: [
    "~/Library/Application Support/DanmakuElectron",
    "~/Library/Preferences/com.example.danmaku.plist",
    "~/Library/Logs/DanmakuElectron",
  ]
end
