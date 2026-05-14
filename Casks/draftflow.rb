cask "draftflow" do
  version "0.2.1"
  sha256 "36bb94af8c9cb214bd144c7b3afd30112f96dc408a2817f9bf34c0b418ce5f77"

  url "https://github.com/sameera207/draftflow/releases/download/v0.2.1/Draftflow-0.2.1.dmg"
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
