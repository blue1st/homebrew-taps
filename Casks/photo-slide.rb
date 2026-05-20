cask "photo-slide" do
  arch arm: "arm64", intel: "x64"

  version "1.7.0"
  sha256 arm:   "5af83f08771cce42f22909538a536f7df0c808d5cef83628265b1dce68bfc062",
         intel: "5c0a7e2ecb95fcf07e263c9fc95e6524fd164042225dbc3e8a002df6413127cc"

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
