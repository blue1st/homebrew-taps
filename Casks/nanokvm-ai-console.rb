cask "nanokvm-ai-console" do
  arch arm: "arm64", intel: "x64"

  version "1.0.4"
  sha256 arm:   "9aa537625162719683a83b7c04257a8d02fca5073fe46c94ab94e29a91b0e413",
         intel: "d19e99e0130f29a6cfcfa328365f4057197119dc0b65ac7200337b79d6670241"

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
