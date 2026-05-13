class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/danieljhkim/orbit"
  version "0.5.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/danieljhkim/orbit/releases/download/v0.5.3/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "67ac4ba9fb5ab19f1512f905ae086113ad480f9451673fd23218618b2831fba5"
    end

    on_intel do
      url "https://github.com/danieljhkim/orbit/releases/download/v0.5.3/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "4fb43bf00f7e7f6d53e73030ac13ffcafc3cc3e12b257a52e881b481b2e03b10"
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
