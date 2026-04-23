cask "snapset" do
  version "1.0.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000" # Initial placeholder

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
