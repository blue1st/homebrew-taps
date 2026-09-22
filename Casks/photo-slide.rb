cask "photo-slide" do
  arch arm: "arm64", intel: "x64"

  version "1.8.1"
  sha256 arm:   "b3bc282c0693314fbb06969484160b31bb425ba37de5376e4e01c1ef417bd67d",
         intel: "62feb4e7b1cc93853c4fea7f74d1e94a2c889d4f8152ced4c812f10ff253c5e6"

  url "https://github.com/blue1st/photo-slide/releases/download/v#{version}/PhotoSlide-#{version}-#{arch}.dmg"
  name "PhotoSlide"
  desc "Simple photo slideshow application"
  homepage "https://github.com/blue1st/photo-slide"

  app "PhotoSlide.app"
  
  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "#{appdir}/PhotoSlide.app"]
  end

  zap trash: [
    "~/Library/Application Support/photo-slide",
    "~/Library/Preferences/com.kawasaki.photo-slide.plist",
    "~/Library/Saved Application State/com.kawasaki.photo-slide.savedState",
  ]
end
