cask "photo-slide" do
  arch arm: "arm64", intel: "x64"

  version "1.8.2"
  sha256 arm:   "4f04755b13c8e652e9e4dc488774a3007c141e5bf2c25ac6f21dcfcc8ec5cc6d",
         intel: "9e34225d112dc50123564f669e3a660fa56544a9911dcf266cd13d8086dda7c2"

  url "https://github.com/blue1st/photo-slide/releases/download/v#{version}/PhotoSlide-#{version}-#{arch}.dmg"
  name "PhotoSlide"
  desc "Simple photo slideshow application"
  homepage "https://github.com/blue1st/photo-slide"

  app "PhotoSlide.app"

  caveats <<~EOS
    PhotoSlide is not notarized. If macOS blocks it from running, execute:
      xattr -cr "/Applications/PhotoSlide.app"
  EOS

  zap trash: [
    "~/Library/Application Support/photo-slide",
    "~/Library/Preferences/com.kawasaki.photo-slide.plist",
    "~/Library/Saved Application State/com.kawasaki.photo-slide.savedState",
  ]
end
