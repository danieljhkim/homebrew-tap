class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/danieljhkim/orbit"
  version "0.17.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/danieljhkim/orbit/releases/download/v0.17.0/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "d4353b54bad18e6a631e3b310990bc7f3ceff67e296aae512671dd8a124b1a72"
    end

    on_intel do
      url "https://github.com/danieljhkim/orbit/releases/download/v0.17.0/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "685dcdbb0fcb94755a75b284928d9e4f81c0adbb74af3aec4c8cbac1eb09d009"
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
