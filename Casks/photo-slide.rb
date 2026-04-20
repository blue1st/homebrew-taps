cask "photo-slide" do
  arch arm: "arm64", intel: "x64"

  version "1.4.0"
  sha256 arm:   "311fe10e8696c93c7d87e96f53a3ba5e0913ce321fabbd8bec8e5d35d8dff40c",
         intel: "623b299044cb3f44349fcf63c0018ea07f593fbd2c605f442f37ffc77dcf92e4"

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
