cask "caffei-native" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.12"
  sha256 arm:   "5ea5ed2bbf8a7f182d07d3436a82766b8df5bd77cba3b3437f3d320c9c614b22",
         intel: "c730492b2184a7c1c52cf82070a30e5b5f8fd213a509dfd65422c468346f227c"

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
