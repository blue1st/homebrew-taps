cask "photo-slide" do
  arch arm: "arm64", intel: "x64"

  version "1.8.0"
  sha256 arm:   "3aa2e0d3828182022bc6b4501debcf9f0769e0902420f63a5542235ebd175b10",
         intel: "9e2beaa371b3b669fcbe76d728d641cb75a49cb001e236e8b46691635498ac03"

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
