cask "photo-slide" do
  arch arm: "arm64", intel: "x64"

  version "1.3.0"
  sha256 arm:   "d1e4026c92907a6b99fa9b01037f4268d4ab322060b3737abc3a35f9976627e2",
         intel: "859b8040cb8bbb9c8493f1fd15a0f54410d8b0b5dbf81aa9275dfa7edac3ac9b"

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
