class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/danieljhkim/orbit"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/danieljhkim/orbit/releases/download/v0.3.1/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "b85554a02a0c3f00b7c1e08799f8e40c079ca7abacd797904f84f74da04474e8"
    end

    on_intel do
      url "https://github.com/danieljhkim/orbit/releases/download/v0.3.1/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "0702f44fb1b01ad54dd9e146619ae5e8fbfb47144ef99a568fa580176266e4ea"
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
