cask "caffei-native" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.13"
  sha256 arm:   "cbcfe3e62564de560e22994c17844e53e5e8ebe764d190fd267e8877935e5862",
         intel: "bd1a8c9a4e54e433f84adac62bc2027c008d7fb1e4ebfa348ad8a0136b21b57a"

  url "https://github.com/blue1st/caffei-native/releases/download/v#{version}/Caffei.Native_#{version}_#{arch}.dmg"
  name "Caffei Native"
  desc "Sleep suppression tool with process monitoring"
  homepage "https://github.com/blue1st/caffei-native"

  app "Caffei Native.app"

  postflight do
    system_command "xattr",
                   args: ["-cr", "#{appdir}/Caffei Native.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/com.blue1st.caffei-native",
    "~/Library/Preferences/com.blue1st.caffei-native.plist",
    "~/Library/Saved Application State/com.blue1st.caffei-native.savedState",
  ]
end
