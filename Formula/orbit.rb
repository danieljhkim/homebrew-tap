class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/danieljhkim/orbit"
  version "0.15.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/danieljhkim/orbit/releases/download/v0.15.0/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "1e23c99e7dddb9e8996f224b3a83448ca769664cc9a7aecced16d3e12bc56bb3"
    end

    on_intel do
      url "https://github.com/danieljhkim/orbit/releases/download/v0.15.0/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "7096966b151eba157acfd76e289e8c0c5b4de469cffacffb69e0ba1cec6448fc"
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
