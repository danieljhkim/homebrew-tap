class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/danieljhkim/orbit"
  url "https://github.com/danieljhkim/orbit/releases/download/v0.1.0/orbit_0.1.0_darwin_arm64.tar.gz"
  sha256 "bcae20e98e5e35c796c1b37d1b10e86bdc899576060e51b193cd9aeac6589ba7"
  version "0.1.0"
  license "MIT"

  def install
    bin.install "orbit"
  end

  test do
    assert_match "orbit", shell_output("#{bin}/orbit --version")
  end
end
