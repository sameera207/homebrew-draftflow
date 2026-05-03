cask "draftflow" do
  version "0.1.16"
  sha256 "054a5ed235a8949055943736aaa247a61eaf38aa4882844a6dc67a33c3f34d31"

  url "https://github.com/sameera207/draftflow/releases/download/v0.1.16/Draftflow-0.1.16.dmg"
  name "Draftflow"
  desc "Markdown editor for Claude Code workflows"
  homepage "https://draftflow.dev"

  app "Draftflow.app"

  zap trash: [
    "~/.claude/editor-bridge",
    "~/Library/Application Support/Draftflow",
  ]
end
