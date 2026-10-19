cask "nanokvm-ai-console" do
  arch arm: "arm64", intel: "x64"

  version "1.0.5"
  sha256 arm:   "f4c4d69bd18677838e1427829e004fecbd694c18d9a2fdaaa83f36087d8b00c6",
         intel: "d91117c15d09182d0b06b0f44b3eac027e11d313c822b85469ee968a3f7a0aca"

  url "https://github.com/blue1st/nanokvm-ai-console/releases/download/v#{version}/NanoKVM-AI-Console-#{version}-mac-#{arch}.dmg"
  name "NanoKVM AI Console"
  desc "Desktop AI Console for NanoKVM Remote MCP and llama.cpp server"
  homepage "https://github.com/blue1st/nanokvm-ai-console"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "NanoKVM AI Console.app"

  caveats <<~EOS
    NanoKVM AI Console is not notarized. If macOS blocks it from running, execute:
      xattr -cr "/Applications/NanoKVM AI Console.app"
  EOS

  zap trash: [
    "~/Library/Application Support/nanokvm-ai-console",
    "~/Library/Preferences/com.nanokvm.aiconsole.plist",
    "~/Library/Saved Application State/com.nanokvm.aiconsole.savedState",
  ]
end
