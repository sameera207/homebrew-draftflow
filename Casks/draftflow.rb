cask "draftflow" do
  version "0.4.4"
  sha256 "7ff0279abfee0568ad5f132a5cbf11d0f6409f9b820c18fa9734fe63f9f9ea1b"

  url "https://github.com/sameera207/draftflow/releases/download/v0.4.4/Draftflow-0.4.4.dmg"
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
