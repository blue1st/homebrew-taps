cask "caffei-native" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.15"
  sha256 arm:   "14344ec1e8d17fa4252df3b4c1e2977670439880a9cc8480eae8fcdab6ce8967",
         intel: "09649aa63b4611ac7cd0593787323e29467e911685d8ecc72003d4fba56c5433"

  url "https://github.com/blue1st/caffei-native/releases/download/v#{version}/Caffei.Native_#{version}_#{arch}.dmg"
  name "Caffei Native"
  desc "Sleep suppression tool with process monitoring"
  homepage "https://github.com/blue1st/caffei-native"

  app "Caffei Native.app"

  caveats <<~EOS
    Caffei Native is not notarized. If macOS blocks it from running, execute:
      xattr -cr "/Applications/Caffei Native.app"
  EOS

  zap trash: [
    "~/Library/Application Support/com.blue1st.caffei-native",
    "~/Library/Preferences/com.blue1st.caffei-native.plist",
    "~/Library/Saved Application State/com.blue1st.caffei-native.savedState",
  ]
end
