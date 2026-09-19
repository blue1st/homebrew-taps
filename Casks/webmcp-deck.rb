cask "webmcp-deck" do
  arch arm: "arm64", intel: "x64"

  version "1.0.0"
  sha256 arm:   "99e38bb28a9739e1d36c2331ae1b0f6d1b772d59c71733903042b2be26c17b2a",
         intel: "432bac035b6df6da73060d0d6588d6c26b1777e32287dbd3cb428a2318c3e6b5"

  url "https://github.com/blue1st/webmcp-deck/releases/download/v#{version}/WebMCP-Deck-#{version}-#{arch}.dmg"
  name "WebMCP Deck"
  desc "WebMCP Client & Desktop Browser for AI Agents"
  homepage "https://github.com/blue1st/webmcp-deck"

  app "WebMCP Deck.app"

  zap trash: [
    "~/Library/Application Support/webmcp-deck",
    "~/Library/Preferences/com.blue1st.webmcp-deck.plist",
    "~/Library/Saved Application State/com.blue1st.webmcp-deck.savedState",
  ]
end
