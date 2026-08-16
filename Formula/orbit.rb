class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/danieljhkim/orbit"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/danieljhkim/orbit/releases/download/v0.12.0/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "ef740ed2c30c1f568da35290d41a452340503d34d3f4499cc4ddbc6f8c73bf39"
    end

    on_intel do
      url "https://github.com/danieljhkim/orbit/releases/download/v0.12.0/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "47bc89398e4b3e0e2e99add05e9451b81a661d5d5bbe2762a7f9c30739af6bf7"
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
