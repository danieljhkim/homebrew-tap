class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/danieljhkim/orbit"
  version "0.8.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/danieljhkim/orbit/releases/download/v0.8.2/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "0fb3be59e55d900f93defd7da1563e345fa34c05d3d847fa85e9e0b63f070b83"
    end

    on_intel do
      url "https://github.com/danieljhkim/orbit/releases/download/v0.8.2/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "cdaa76dfd9a82fe009a594ffa42019460b31866a18d6605f274fdb357b91729d"
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
