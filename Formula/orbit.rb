class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/danieljhkim/orbit"
  version "0.12.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/danieljhkim/orbit/releases/download/v0.12.1/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "495aa90fe585c3f41f21469c78281773b06fc9e3f4345585324a63080f9f47ae"
    end

    on_intel do
      url "https://github.com/danieljhkim/orbit/releases/download/v0.12.1/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "3c18cb5c07c9f390e4c586db2a9c0722fb49bfd65b328ca5017d2c6cf50f5594"
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
