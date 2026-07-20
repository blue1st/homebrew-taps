cask "frisbee" do
  version "0.1.3"
  sha256 "a2cc705bea6b0e7dcd847ed4ec91f24b3930b780af215549cc3822dcc6c5b959"

  url "https://github.com/blue1st/frisbee/releases/download/v#{version}/Frisbee_#{version}_universal.dmg"
  name "Frisbee"
  desc "Async Web Search & Knowledge Aggregation Tool with Dog Frisbee Motif"
  homepage "https://github.com/blue1st/frisbee"

  app "Frisbee.app"

  postflight do
    system_command "xattr",
                   args: ["-cr", "#{appdir}/Frisbee.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/com.frisbee.app",
    "~/Library/Preferences/com.frisbee.app.plist",
    "~/Library/Saved Application State/com.frisbee.app.savedState",
  ]
end
