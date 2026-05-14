cask "draftflow" do
  version "0.2.3"
  sha256 "4560e89e0a8aea4664c51e8c2f55e693fba7368bf2f28113a58a623e56f4867b"

  url "https://github.com/sameera207/draftflow/releases/download/v0.2.3/Draftflow-0.2.3.dmg"
  name "Draftflow"
  desc "Markdown editor for Claude Code workflows"
  homepage "https://draftflow.dev"

  app "Draftflow.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/Draftflow.app"]
  end

  zap trash: [
    "~/.claude/editor-bridge",
    "~/Library/Application Support/Draftflow",
  ]
end
