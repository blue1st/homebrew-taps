cask "snapset" do
  version "1.2.7"
  sha256 "d047ae3b62889a877be11210342f2086a758252ae9d308ef24c248d60cd45bd5"

  url "https://github.com/blue1st/snapset/releases/download/v#{version}/snapset-#{version}-arm64.dmg"
  name "SnapSet"
  desc "A tool to take screenshots with predefined presets"
  homepage "https://github.com/blue1st/snapset"

  app "snapset.app"

  # Only support Apple Silicon (based on release assets)
  depends_on arch: :arm64

  caveats <<~EOS
    SnapSet is not notarized. If macOS blocks it from running, execute:
      xattr -cr "/Applications/snapset.app"
  EOS

  zap trash: [
    "~/Library/Application Support/snapset",
    "~/Library/Preferences/com.blue1st.snapset.plist",
    "~/Library/Logs/snapset",
  ]
end
