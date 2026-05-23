class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/danieljhkim/orbit"
  version "0.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/danieljhkim/orbit/releases/download/v0.7.1/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "680a12f5309c29804a3e43856a92d4100cd0d5b3e8ba0581901d15a5c42c60b8"
    end

    on_intel do
      url "https://github.com/danieljhkim/orbit/releases/download/v0.7.1/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "e9b45c120f590bb679641f5060ec4645e5f93e65308b079957a74170182327cd"
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
