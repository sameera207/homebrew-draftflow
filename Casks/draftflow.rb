cask "draftflow" do
  version "0.2.4"
  sha256 "f9f7e5107a253baf2f08c440283d85a18835a7990e8f81908d775db7c499bc72"

  url "https://github.com/sameera207/draftflow/releases/download/v0.2.4/Draftflow-0.2.4.dmg"
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
