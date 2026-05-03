cask "draftflow" do
  version "0.1.4"
  sha256 "cc00ba71421d23ffb2023e948cbe8ef2a2a3e48e962b722b86f503d7acfc998e"

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
