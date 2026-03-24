cask "draftflow" do
  version "0.1.0"
  sha256 "3064b0687d7e7077e37d64da8575d110bfc6ab6110e86ea725ebb1306c6a1ce3"

  url "https://github.com/sameera207/draftflow/releases/download/v#{version}/Draftflow-#{version}.dmg"
  name "Draftflow"
  desc "Markdown editor for Claude Code workflows"
  homepage "https://draftflow.dev"

  app "Draftflow.app"

  zap trash: [
    "~/.claude/editor-bridge",
    "~/Library/Application Support/Draftflow",
  ]
end
