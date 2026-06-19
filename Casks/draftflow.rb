cask "draftflow" do
  version "0.5.1"
  sha256 "3b895f3c06832b3399964df24ad91ade7f24015cca352cae36057f067a69c5a3"

  url "https://github.com/sameera207/draftflow/releases/download/v0.5.1/Draftflow-0.5.1.dmg"
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
