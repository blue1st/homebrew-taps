cask "snapset" do
  version "1.2.5"
  sha256 "d7738b5917c21fbb0845877d8279c721eeace2f6ea4b5c173946880e0743553d"

  url "https://github.com/blue1st/snapset/releases/download/v#{version}/snapset-#{version}-arm64.dmg"
  name "SnapSet"
  desc "A tool to take screenshots with predefined presets"
  homepage "https://github.com/blue1st/snapset"

  app "snapset.app"

  # Only support Apple Silicon (based on release assets)
  depends_on arch: :arm64

  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{appdir}/snapset.app"]
    run "/usr/bin/codesign", args: ["--force", "--deep", "--sign", "-", "#{appdir}/snapset.app"]
  end

  zap trash: [
    "~/Library/Application Support/snapset",
    "~/Library/Preferences/com.blue1st.snapset.plist",
    "~/Library/Logs/snapset",
  ]
end
