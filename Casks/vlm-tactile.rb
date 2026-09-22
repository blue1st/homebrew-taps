cask "vlm-tactile" do
  version "1.1.5"
  sha256 "ccb3100df23b9204277a851580abc0ab3ca3faf125eab5330cb4d62c58f38486"

  url "https://github.com/blue1st/vlm-tactile/releases/download/v#{version}/VLM-Tactile-#{version}-arm64.dmg"
  name "VLM-Tactile"
  desc "Desktop Automation AI Agent using VLM"
  homepage "https://github.com/blue1st/vlm-tactile"

  app "VLM-Tactile.app"

  # Only support Apple Silicon (consistent with build script)
  depends_on arch: :arm64

  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{appdir}/VLM-Tactile.app"]
    run "/usr/bin/codesign", args: ["--force", "--deep", "--sign", "-", "#{appdir}/VLM-Tactile.app"]
  end

  zap trash: [
    "~/Library/Application Support/vlm-tactile",
    "~/Library/Preferences/com.blue1st.vlm-tactile.plist",
    "~/Library/Logs/vlm-tactile",
  ]
end
