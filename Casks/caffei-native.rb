cask "caffei-native" do
  version "0.1.8"
  sha256 "3adbe0e8cf3e7975791da7bede9cae8eeac201d73e213582724185902e71e6a1"

  url "https://github.com/blue1st/caffei-native/releases/download/v#{version}/Caffei.Native_#{version}_aarch64.dmg"
  name "Caffei Native"
  desc "Sleep suppression tool with process monitoring"
  homepage "https://github.com/blue1st/caffei-native"

  app "Caffei Native.app"

  zap trash: [
    "~/Library/Application Support/com.blue1st.caffei-native",
    "~/Library/Preferences/com.blue1st.caffei-native.plist",
    "~/Library/Saved Application State/com.blue1st.caffei-native.savedState",
  ]
end
