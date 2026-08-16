class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/danieljhkim/orbit"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/danieljhkim/orbit/releases/download/v0.11.0/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "b2825920f22a879d9f15cbd2ed3cea9b930747086f09780d3c9ba095cb1ce403"
    end

    on_intel do
      url "https://github.com/danieljhkim/orbit/releases/download/v0.11.0/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "3d99f51e85f1c8eb4067f5d39894aa77f0209e5f7a6d7e237a281830fed318ea"
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
