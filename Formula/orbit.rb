class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/danieljhkim/orbit"
  url "https://github.com/danieljhkim/orbit/releases/download/v0.2.0/orbit_0.2.0_darwin_arm64.tar.gz"
  sha256 "1d55fad1f0e915f6db3de62f38a0f5fd2a28740ee1b15e4d170e1cf967e527bf"
  version "0.2.0"
  license "MIT"

  def install
    bin.install "orbit"
  end

  test do
    assert_match "orbit", shell_output("#{bin}/orbit --version")
  end
end
