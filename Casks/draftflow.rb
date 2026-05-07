cask "draftflow" do
  version "0.1.19"
  sha256 "a0002499003786186299c1c3c266cf9d85f79c446980671be7e90792a2fc73f4"

  url "https://github.com/sameera207/draftflow/releases/download/v0.1.19/Draftflow-0.1.19.dmg"
  name "Draftflow"
  desc "Markdown editor for Claude Code workflows"
  homepage "https://draftflow.dev"

  app "Draftflow.app"

  zap trash: [
    "~/.claude/editor-bridge",
    "~/Library/Application Support/Draftflow",
  ]
end
