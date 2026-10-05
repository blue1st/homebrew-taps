cask "webmcp-deck" do
  arch arm: "arm64", intel: "x64"

  version "1.0.3"
  sha256 arm:   "95777ca197e470379cc4e87307e34b4fda253183a47dc64a02c1075b62a15311",
         intel: "9b5700b3840ceb399bc8af4108460a021b54437c506fb980aaeb6cda2cd3042e"

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
