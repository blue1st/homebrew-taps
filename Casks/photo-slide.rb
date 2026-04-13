cask "photo-slide" do
  arch arm: "arm64", intel: "x64"

  version "1.2.0"
  sha256 arm:   "8352f71ab848d2b4a52c963bedcd2aa821f67dc4bcdc8681bd33b9b28d23aaf6",
         intel: "04aee79e551e0fdf734d4fa6057d5ff200c4bfd350753a8472d1211c60203ad0"

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
