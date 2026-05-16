cask "draftflow" do
  version "0.4.0"
  sha256 "29f8faa7071a15e6d2aef01a5d1b646f4691f32aefa30431cbfb02f26f875fd9"

  url "https://github.com/sameera207/draftflow/releases/download/v0.4.0/Draftflow-0.4.0.dmg"
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
