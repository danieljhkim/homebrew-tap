class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/danieljhkim/orbit"
  version "0.10.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/danieljhkim/orbit/releases/download/v0.10.1/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "177cded59718e62719a29193a72303a831f63e05f6da141c495461c7ae85c3bf"
    end

    on_intel do
      url "https://github.com/danieljhkim/orbit/releases/download/v0.10.1/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "b0b0b7db5c243d7f8597d41aefd38149a076cbde1cb4ce07850ea75d0e20ba00"
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
