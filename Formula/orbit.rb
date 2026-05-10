class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/danieljhkim/orbit"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/danieljhkim/orbit/releases/download/v0.4.0/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "fb6490cc11ff4431ccb26bc24472fddc184311b4b031e8483767aa1fc2f23ea2"
    end

    on_intel do
      url "https://github.com/danieljhkim/orbit/releases/download/v0.4.0/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "9cad614c7c6152eb94c21b62e9790a4e0ac0ee73ca9cb0f4984731efa6b435cf"
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
