cask "caffei-native" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.11"
  sha256 arm:   "69ec949526a45211716a52b5b1beca716304fea3a64ec655aa47445da3b17898",
         intel: "8c8472638bb3d244556d63db30bb7836b13f247fcf19272f24c47271e958d8d6"

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
