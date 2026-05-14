cask "draftflow" do
  version "0.2.0"
  sha256 "5d14b956ad9df9c63354282c1fe3a395d9115a940dda3f20ee7ec6e722131984"

  url "https://github.com/sameera207/draftflow/releases/download/v0.2.0/Draftflow-0.2.0.dmg"
  name "Draftflow"
  desc "Markdown editor for Claude Code workflows"
  homepage "https://draftflow.dev"

  app "Draftflow.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "\#{appdir}/Draftflow.app"]
  end

  zap trash: [
    "~/.claude/editor-bridge",
    "~/Library/Application Support/Draftflow",
  ]
end
