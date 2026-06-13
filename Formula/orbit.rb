class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/danieljhkim/orbit"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/danieljhkim/orbit/releases/download/v0.9.0/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "93f1b7fc72b9f98198e54d96584af9211fcb06d72018274eb61eec6700b48be0"
    end

    on_intel do
      url "https://github.com/danieljhkim/orbit/releases/download/v0.9.0/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "382d387210f7a558b3ae9da682370ce3aec5000f27c9ec379b894a4d625dc4b2"
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
