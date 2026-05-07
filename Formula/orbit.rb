class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/danieljhkim/orbit"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/danieljhkim/orbit/releases/download/v0.3.0/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "5b35cb8bf13420a520c048eaa96f0bec13012742acb08541fdc4480709907a5d"
    end

    on_intel do
      url "https://github.com/danieljhkim/orbit/releases/download/v0.3.0/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "fc82efd736f77f55433f630af67846aebd24065d2e96c00cd04161b3e2d03df7"
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
