cask "draftflow" do
  version "0.2.2"
  sha256 "38baead5a60a59144bdfca594deafe50c0defcdfbfff7939f88dd68725cdebe2"

  url "https://github.com/sameera207/draftflow/releases/download/v0.2.2/Draftflow-0.2.2.dmg"
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
