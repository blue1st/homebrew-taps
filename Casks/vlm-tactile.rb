cask "vlm-tactile" do
  version "1.1.4"
  sha256 "2b0231dd75d281bcaf644e1a5032f24708a73143a20624b7a9b9da06c2e64e1d"

  url "https://github.com/blue1st/vlm-tactile/releases/download/v#{version}/VLM-Tactile-#{version}-arm64.dmg"
  name "VLM-Tactile"
  desc "Desktop Automation AI Agent using VLM"
  homepage "https://github.com/blue1st/vlm-tactile"

  app "VLM-Tactile.app"

  # Only support Apple Silicon (consistent with build script)
  depends_on arch: :arm64

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/VLM-Tactile.app"],
                   sudo: false
    system_command "/usr/bin/codesign",
                   args: ["--force", "--deep", "--sign", "-", "#{appdir}/VLM-Tactile.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/vlm-tactile",
    "~/Library/Preferences/com.blue1st.vlm-tactile.plist",
    "~/Library/Logs/vlm-tactile",
  ]
end
