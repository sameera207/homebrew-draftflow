cask "draftflow" do
  version "0.3.0"
  sha256 "51c2f151e9316794be12fa67aa336ef4797dd3d3f94b4f71edd94d3a7b089bd6"

  url "https://github.com/sameera207/draftflow/releases/download/v0.3.0/Draftflow-0.3.0-arm64.dmg"
  name "Draftflow"
  desc "Markdown editor for Claude Code workflows"
  homepage "https://draftflow.dev"

  app "Draftflow.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/Draftflow.app"]
  end

  zap trash: [
    "~/.claude/editor-bridge",
    "~/.draftflow",
    "~/Library/Application Support/Draftflow",
  ]
end
