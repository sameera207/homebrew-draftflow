cask "draftflow" do
  version "0.1.21"
  sha256 "e085981f7eeb4e47f5656b2533f0ffdd95488bb8fcb1ca39c0eea92b9ed994d0"

  url "https://github.com/sameera207/draftflow/releases/download/v0.1.21/Draftflow-0.1.21.dmg"
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
