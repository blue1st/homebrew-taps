cask "photo-slide" do
  arch arm: "arm64", intel: "x64"

  version "1.6.0"
  sha256 arm:   "3ef838726d91bdd343a9beaa8dc04fbd600fa7076f6db7be7d57321fae5b3ac9",
         intel: "e0ab48ea8112b113a8af51db6c1ebe4c277ace395cbaff89ec1a3d15f21a0625"

  url "https://github.com/blue1st/photo-slide/releases/download/v#{version}/PhotoSlide-#{version}-#{arch}.dmg"
  name "PhotoSlide"
  desc "Simple photo slideshow application"
  homepage "https://github.com/blue1st/photo-slide"

  app "PhotoSlide.app"
  
  postflight do
    system_command "xattr",
                   args: ["-cr", "#{appdir}/PhotoSlide.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/photo-slide",
    "~/Library/Preferences/com.kawasaki.photo-slide.plist",
    "~/Library/Saved Application State/com.kawasaki.photo-slide.savedState",
  ]
end
