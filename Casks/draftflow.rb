cask "draftflow" do
  version "0.2.5"
  sha256 "4f92ea3fd6dbd2eb6d581b1d836d66f3346ad9e4e520b852013cb101586e3eaa"

  url "https://github.com/sameera207/draftflow/releases/download/v0.2.5/Draftflow-0.2.5.dmg"
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
