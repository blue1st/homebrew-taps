cask "caffei-native" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.14"
  sha256 arm:   "2f4048d64f0b0bc2da95e855dcbbda3fc85a13b1fadcc3169f30e095e5aac7cc",
         intel: "96d2e219db851dd4ebb2a2e2bc40e11a67d4e5356391adb53d90f1429147db15"

  url "https://github.com/blue1st/caffei-native/releases/download/v#{version}/Caffei.Native_#{version}_#{arch}.dmg"
  name "Caffei Native"
  desc "Sleep suppression tool with process monitoring"
  homepage "https://github.com/blue1st/caffei-native"

  app "Caffei Native.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "#{appdir}/Caffei Native.app"]
  end

  zap trash: [
    "~/Library/Application Support/com.blue1st.caffei-native",
    "~/Library/Preferences/com.blue1st.caffei-native.plist",
    "~/Library/Saved Application State/com.blue1st.caffei-native.savedState",
  ]
end
