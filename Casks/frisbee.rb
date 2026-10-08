cask "frisbee" do
  version "0.1.11"
  sha256 "6f6175fd69ede60a03873109916868932e576937dc502f51d77851e7642da38e"

  url "https://github.com/blue1st/frisbee/releases/download/v#{version}/Frisbee_#{version}_universal.dmg"
  name "Frisbee"
  desc "Async Web Search & Knowledge Aggregation Tool with Dog Frisbee Motif"
  homepage "https://github.com/blue1st/frisbee"

  app "Frisbee.app"

  caveats <<~EOS
    Frisbee is not notarized. If macOS blocks it from running, execute:
      xattr -cr "/Applications/Frisbee.app"
  EOS

  zap trash: [
    "~/Library/Application Support/com.frisbee.app",
    "~/Library/Preferences/com.frisbee.app.plist",
    "~/Library/Saved Application State/com.frisbee.app.savedState",
  ]
end
