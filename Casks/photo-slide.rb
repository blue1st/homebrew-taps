cask "photo-slide" do
  arch arm: "arm64", intel: "x64"

  version "1.5.1"
  sha256 arm:   "55debf7ddd1dd47958fbac9e92a5bd905be4650ceedb90923b632eca904a88dd",
         intel: "33346dae38a5e104aa18b76732cc00c9a6128af06ae8961c7d7b36b2a19c35ea"

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
