cask "webmcp-deck" do
  arch arm: "arm64", intel: "x64"

  version "1.0.5"
  sha256 arm:   "01ad4d59879f8e683a3180b2d9406e8a3c7d0543bfd61ab2b0771336069a7fc2",
         intel: "dda66edcc88e8fe2be9b58d8d46fbdea44b10ca0d0ac485eee2ed4846f49f43d"

  url "https://github.com/blue1st/webmcp-deck/releases/download/v#{version}/WebMCP-Deck-#{version}-#{arch}.dmg"
  name "WebMCP Deck"
  desc "WebMCP Client & Desktop Browser for AI Agents"
  homepage "https://github.com/blue1st/webmcp-deck"

  app "WebMCP Deck.app"

  caveats <<~EOS
    WebMCP Deck is not notarized. If macOS blocks it from running, execute:
      xattr -cr "/Applications/WebMCP Deck.app"
  EOS

  zap trash: [
    "~/Library/Application Support/webmcp-deck",
    "~/Library/Preferences/com.blue1st.webmcp-deck.plist",
    "~/Library/Saved Application State/com.blue1st.webmcp-deck.savedState",
  ]
end
