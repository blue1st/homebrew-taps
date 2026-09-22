cask "webmcp-deck" do
  arch arm: "arm64", intel: "x64"

  version "1.0.2"
  sha256 arm:   "688bf8e8681cb1051dea5a6a95b4f1431a4daa00c3fd4f184b3312dc93a9ac9f",
         intel: "ebf6b2ad8752d0e13112a5e9b81f7e1c996d8c955d76cde12d6526ebd27353a1"

  url "https://github.com/blue1st/webmcp-deck/releases/download/v#{version}/WebMCP-Deck-#{version}-#{arch}.dmg"
  name "WebMCP Deck"
  desc "WebMCP Client & Desktop Browser for AI Agents"
  homepage "https://github.com/blue1st/webmcp-deck"

  app "WebMCP Deck.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "#{appdir}/WebMCP Deck.app"]
  end

  zap trash: [
    "~/Library/Application Support/webmcp-deck",
    "~/Library/Preferences/com.blue1st.webmcp-deck.plist",
    "~/Library/Saved Application State/com.blue1st.webmcp-deck.savedState",
  ]
end
