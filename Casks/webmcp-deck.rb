cask "webmcp-deck" do
  arch arm: "arm64", intel: "x64"

  version "1.0.1"
  sha256 arm:   "1579dd27b093fed4820c864654ed7c2e4d3e2690fc989ecde2f3a7beac233674",
         intel: "0055e9942c620884cd7166b07b759a13e6cf58eee6843e787402a73e98b29ad7"

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
