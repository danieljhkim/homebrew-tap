class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/danieljhkim/orbit"
  version "0.9.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/danieljhkim/orbit/releases/download/v0.9.1/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "13fe74cb3dce9a2ab7b3a3c934910bb7bfd0936cc56d097d8e05dd0c53c8d10a"
    end

    on_intel do
      url "https://github.com/danieljhkim/orbit/releases/download/v0.9.1/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "feda0758056f7480a41a96ebfb9bb4dc701adb5441e3487560083c8fe9cdee6e"
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
