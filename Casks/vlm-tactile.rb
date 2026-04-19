cask "vlm-tactile" do
  version "1.1.2"
  sha256 "09f0c464827b61fff84c2e7bd5d6a7539aa90fd825767b8859c2af65dda62e78"

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
