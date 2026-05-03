cask "draftflow" do
  version "0.1.15"
  sha256 "237003c75bf823c2c210777fc6fd56cfa82c152b647e4b906a466252f63b2981"

  url "https://github.com/sameera207/draftflow/releases/download/v0.1.15/Draftflow-0.1.15.dmg"
  name "Draftflow"
  desc "Markdown editor for Claude Code workflows"
  homepage "https://draftflow.dev"

  app "Draftflow.app"

  zap trash: [
    "~/.claude/editor-bridge",
    "~/Library/Application Support/Draftflow",
  ]
end
