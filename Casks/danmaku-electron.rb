cask "danmaku-electron" do
  version "1.4.0"
  sha256 "302b7fe763eacc8b7e57407e2db1f55b035a9bc23c5ae421cd17a8990c88cae0"

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
