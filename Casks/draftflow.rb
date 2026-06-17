cask "draftflow" do
  version "0.5.0"
  sha256 "eb343ae37fa05062bf9fe4ea9b9889fdcc95634f7cab83f16bc63236dc7f4f24"

  url "https://github.com/sameera207/draftflow/releases/download/v0.5.0/Draftflow-0.5.0.dmg"
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
