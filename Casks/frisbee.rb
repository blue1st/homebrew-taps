cask "frisbee" do
  version "0.1.10"
  sha256 "4407fbd53a87d13db47043383b8be399a572a1d3dca97052a1256a8dfffcb758"

  url "https://github.com/blue1st/frisbee/releases/download/v#{version}/Frisbee_#{version}_universal.dmg"
  name "Frisbee"
  desc "Async Web Search & Knowledge Aggregation Tool with Dog Frisbee Motif"
  homepage "https://github.com/blue1st/frisbee"

  app "Frisbee.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "#{appdir}/Frisbee.app"]
  end

  zap trash: [
    "~/Library/Application Support/com.frisbee.app",
    "~/Library/Preferences/com.frisbee.app.plist",
    "~/Library/Saved Application State/com.frisbee.app.savedState",
  ]
end
