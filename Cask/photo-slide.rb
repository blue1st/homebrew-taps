cask "photo-slide" do
  version "1.0.0"
  sha256 "SHA256_OF_DMG_FILE"

  url "https://github.com/blue1st/photo-slide/releases/download/v#{version}/PhotoSlide-#{version}.dmg"
  name "PhotoSlide"
  desc "A simple photo slide application"
  homepage "https://github.com/blue1st/photo-slide"

  app "PhotoSlide.app"

  zap trash: [
    "~/Library/Application Support/photo-slide",
    "~/Library/Preferences/com.kawasaki.photo-slide.plist",
  ]
end

