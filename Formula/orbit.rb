class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/danieljhkim/orbit"
  version "0.14.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/danieljhkim/orbit/releases/download/v0.14.0/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "56c8a25803c19bfb4b211cec3b8a4fc7c0a3854f884ba524c6fb07136c16b52b"
    end

    on_intel do
      url "https://github.com/danieljhkim/orbit/releases/download/v0.14.0/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "92833cbb9a11bd74be800890a8ec7638a7c893c55cd20b5c57ccd703b7fc8964"
    end
  end

  def install
    odie "Orbit Homebrew releases currently support macOS only. Use install.sh on Linux." if OS.linux?
    bin.install "orbit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/orbit --version")
  end
end
