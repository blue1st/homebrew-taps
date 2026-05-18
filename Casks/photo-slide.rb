cask "photo-slide" do
  arch arm: "arm64", intel: "x64"

  version "1.5.0"
  sha256 arm:   "94e9efcbbaa4e0905e4c0b0158cd520ae8722be8537998763c4f1871004523a9",
         intel: "d18a178049a121cc3f2488ec3e1df292c5bfbc3a6521b16f24db72ca2fa054fc"

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
