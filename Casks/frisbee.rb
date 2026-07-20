cask "frisbee" do
  version "0.1.5"
  sha256 "85975b3949510af942ee44134adf19c9240a0f39997d8ae176b793b8e0e0b9c4"

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
