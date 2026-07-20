cask "frisbee" do
  version "0.1.8"
  sha256 "f84b13068049a78e19ef33ea2820a8fee11860056d721441543e32181555d986"

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
