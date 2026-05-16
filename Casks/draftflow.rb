cask "draftflow" do
  version "0.4.1"
  sha256 "b1553f3dc5193623432299243fa66ad4c33d79665b562cb41ee9f58f2b6be9e1"

  url "https://github.com/sameera207/draftflow/releases/download/v0.4.1/Draftflow-0.4.1.dmg"
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
