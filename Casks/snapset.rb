cask "snapset" do
  version "1.2.3"
  sha256 "94d73543133c54e184cd6151c569cb8ffb5ece820e8316dea5512c4596f1bee8"

  url "https://github.com/blue1st/snapset/releases/download/v#{version}/snapset-#{version}-arm64.dmg"
  name "SnapSet"
  desc "A tool to take screenshots with predefined presets"
  homepage "https://github.com/blue1st/snapset"

  app "snapset.app"

  # Only support Apple Silicon (based on release assets)
  depends_on arch: :arm64

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/snapset.app"],
                   sudo: false
    system_command "/usr/bin/codesign",
                   args: ["--force", "--deep", "--sign", "-", "#{appdir}/snapset.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/snapset",
    "~/Library/Preferences/com.blue1st.snapset.plist",
    "~/Library/Logs/snapset",
  ]
end
