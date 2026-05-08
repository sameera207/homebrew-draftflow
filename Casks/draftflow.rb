cask "draftflow" do
  version "0.1.20"
  sha256 "b54659f6609a6377b6349bf8ab143cd7f94f8cfe7403f95782ebea61ad761ffe"

  url "https://github.com/sameera207/draftflow/releases/download/v0.1.20/Draftflow-0.1.20.dmg"
  name "Draftflow"
  desc "Markdown editor for Claude Code workflows"
  homepage "https://draftflow.dev"

  app "Draftflow.app"

  zap trash: [
    "~/.claude/editor-bridge",
    "~/Library/Application Support/Draftflow",
  ]
end
