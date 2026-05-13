class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/danieljhkim/orbit"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/danieljhkim/orbit/releases/download/v0.5.0/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "336f1400daca5d2de2b31854ee5d0c7676120ae858dc987fd6f7fef63f5da3c3"
    end

    on_intel do
      url "https://github.com/danieljhkim/orbit/releases/download/v0.5.0/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "c4ddf06c837dc143cc86fb4a26829c074c78e15078229555653d750f05f41368"
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
