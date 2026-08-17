class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/danieljhkim/orbit"
  version "0.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/danieljhkim/orbit/releases/download/v0.13.0/orbit-aarch64-apple-darwin.tar.gz"
      sha256 "f740e94be175d51af23d9eefe70d1ce8fb76a5589b89c5e3400177e6e2ac9133"
    end

    on_intel do
      url "https://github.com/danieljhkim/orbit/releases/download/v0.13.0/orbit-x86_64-apple-darwin.tar.gz"
      sha256 "6cc6f4891dcd64c6147990c03c28e5eb354366a70c128ad109fd68dc7e2d8c29"
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
