cask "frisbee" do
  version "0.1.7"
  sha256 "52e65ee67bbecfa5658663caccfdd12206acb22b128d5cbf33b40bcbb15881b3"

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
