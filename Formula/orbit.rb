class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/danieljhkim/orbit"
  version "0.17.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/danieljhkim/orbit/releases/download/v0.17.1/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "fb187063e2da92cdb1b827e21e12cd36cb030474432e1c8f3ecc7022e28c6676"
    end

    on_intel do
      url "https://github.com/danieljhkim/orbit/releases/download/v0.17.1/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "5f2c0c051a4029f62645497cdcdf418a71d006b3c4d71625e1171035e84815ce"
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
