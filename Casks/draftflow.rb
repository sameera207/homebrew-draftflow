cask "draftflow" do
  version "0.1.17"
  sha256 "598a5408fca03dafd624a19dc17dfdb038ec06d6e3fb0b05e377c05af4f88225"

  url "https://github.com/sameera207/draftflow/releases/download/v0.1.17/Draftflow-0.1.17.dmg"
  name "Draftflow"
  desc "Markdown editor for Claude Code workflows"
  homepage "https://draftflow.dev"

  app "Draftflow.app"

  zap trash: [
    "~/.claude/editor-bridge",
    "~/Library/Application Support/Draftflow",
  ]
end
