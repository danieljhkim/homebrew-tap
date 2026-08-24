class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/danieljhkim/orbit"
  version "0.16.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/danieljhkim/orbit/releases/download/v0.16.0/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "2a0dcf6e2ef36865e461450e09e79c78c6724d50d44f110ff06a7003c7473079"
    end

    on_intel do
      url "https://github.com/danieljhkim/orbit/releases/download/v0.16.0/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "5ff2f241cde97ad4314c727a17035543701eb4197f0967816e136f1fb72466ad"
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
