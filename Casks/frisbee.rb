cask "frisbee" do
  version "0.1.2"
  sha256 "c00d9a069d29725839dcc146c864b9fa7dfb386d835a78a033c776073b8da01d"

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
