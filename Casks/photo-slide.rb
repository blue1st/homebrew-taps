cask "photo-slide" do
  arch arm: "arm64", intel: "x64"

  version "1.7.1"
  sha256 arm:   "c60bf5f6686537de5de5ef7184cb425698c85be705ba1e20b6f36b43185416b9",
         intel: "58b7c31fd7b610fceb49171317a70ecee744d72f3e773486385b4ccd9b872266"

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
