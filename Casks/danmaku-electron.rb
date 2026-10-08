cask "danmaku-electron" do
  version "1.4.9"
  sha256 "98fa0a77eef31ab5b63711b4d743ade1e36440eb7948ed2c300de34e883136fb"

  url "https://github.com/blue1st/danmaku-electron/releases/download/v#{version}/danmaku-electron-#{version}-arm64.dmg"
  name "Danmaku Electron"
  desc "AI Desktop Commentary Overlay"
  homepage "https://github.com/blue1st/danmaku-electron"

  app "DanmakuElectron.app"

  # Only support Apple Silicon (based on release assets)
  depends_on arch: :arm64

  caveats <<~EOS
    Danmaku Electron is not notarized. If macOS blocks it from running, execute:
      xattr -cr "/Applications/DanmakuElectron.app"
  EOS

  zap trash: [
    "~/Library/Application Support/DanmakuElectron",
    "~/Library/Preferences/com.example.danmaku.plist",
    "~/Library/Logs/DanmakuElectron",
  ]
end
