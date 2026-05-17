class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/danieljhkim/orbit"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/danieljhkim/orbit/releases/download/v0.6.0/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "1931a3debda2977f59e1fe6542de750cebf13fd74810d02df90646829c35f4e1"
    end

    on_intel do
      url "https://github.com/danieljhkim/orbit/releases/download/v0.6.0/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "b560c08ca14e9ba39d2635d211e3fde628925070c3dfd481102b45bcfac45d07"
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
