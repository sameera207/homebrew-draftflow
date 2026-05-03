cask "draftflow" do
  version "0.1.3"
  sha256 "70c118d13590f58e059935bfb253ef39e909127b9e179bdf9097f429d5739964"

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
