class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/danieljhkim/orbit"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/danieljhkim/orbit/releases/download/v0.5.1/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "72c300c586c208986448f2eb2ed515344b4cff8836daa307a3e8b74314259eea"
    end

    on_intel do
      url "https://github.com/danieljhkim/orbit/releases/download/v0.5.1/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "1bac1650933b6ea65e50327bcaa169c4e711c8dc58134fbfcf5dd7fd614d88b3"
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
