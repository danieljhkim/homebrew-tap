class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/danieljhkim/orbit"
  version "0.9.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/danieljhkim/orbit/releases/download/v0.9.2/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "ef08b8dc5dc2c9a3c40d669e893e1548ef6c964b43ef54317c0c1d5c846750d8"
    end

    on_intel do
      url "https://github.com/danieljhkim/orbit/releases/download/v0.9.2/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "36eb02ffbdd6adcc2666e3fef1d82ca28a6da007e37cdd242d557472593b8015"
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
