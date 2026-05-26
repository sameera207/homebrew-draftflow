cask "draftflow" do
  version "0.4.2"
  sha256 "ee79e208ff618521dafea05c41619ed72d1a7044a3e24079fda56e1ecd51f99f"

  url "https://github.com/sameera207/draftflow/releases/download/v0.4.2/Draftflow-0.4.2.dmg"
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
