cask "photo-slide" do
  arch arm: "arm64", intel: "x64"

  version "1.1.2"
  sha256 arm:   "2198d008b33b8bde2db2f53f44465c342bec2e47f3db1e0598630ac65607f911",
         intel: "557b76fc5050e193a1bab829e140f0ad5d209bd6352d95a9e5266760d39fb1d7"

  url "https://github.com/blue1st/photo-slide/releases/download/v#{version}/PhotoSlide-#{version}-#{arch}.dmg"
  name "PhotoSlide"
  desc "Simple photo slideshow application"
  homepage "https://github.com/blue1st/photo-slide"

  app "PhotoSlide.app"

  zap trash: [
    "~/Library/Application Support/photo-slide",
    "~/Library/Preferences/com.kawasaki.photo-slide.plist",
    "~/Library/Saved Application State/com.kawasaki.photo-slide.savedState",
  ]
end
