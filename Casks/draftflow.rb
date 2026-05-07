cask "draftflow" do
  version "0.1.18"
  sha256 "548321e080c994325e256572b30e944dafd39fc6cb2f343b3687ae398d1201b7"

  url "https://github.com/sameera207/draftflow/releases/download/v0.1.18/Draftflow-0.1.18.dmg"
  name "Draftflow"
  desc "Markdown editor for Claude Code workflows"
  homepage "https://draftflow.dev"

  app "Draftflow.app"

  zap trash: [
    "~/.claude/editor-bridge",
    "~/Library/Application Support/Draftflow",
  ]
end
