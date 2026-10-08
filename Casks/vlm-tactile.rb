cask "vlm-tactile" do
  version "1.1.7"
  sha256 "35ab42606f265d75d1e43e4d27f0f6b69e913b14cf39dd6f9fac4c86448077fa"

  url "https://github.com/blue1st/vlm-tactile/releases/download/v#{version}/VLM-Tactile-#{version}-arm64.dmg"
  name "VLM-Tactile"
  desc "Desktop Automation AI Agent using VLM"
  homepage "https://github.com/blue1st/vlm-tactile"

  app "VLM-Tactile.app"

  # Only support Apple Silicon (consistent with build script)
  depends_on arch: :arm64

  caveats <<~EOS
    VLM-Tactile is not notarized. If macOS blocks it from running, execute:
      xattr -cr "/Applications/VLM-Tactile.app"
  EOS

  zap trash: [
    "~/Library/Application Support/vlm-tactile",
    "~/Library/Preferences/com.blue1st.vlm-tactile.plist",
    "~/Library/Logs/vlm-tactile",
  ]
end
