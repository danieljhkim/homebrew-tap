class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/danieljhkim/orbit"
  url "https://github.com/danieljhkim/orbit/releases/download/v0.1.0/orbit_0.1.0_darwin_arm64.tar.gz"
  sha256 "bcae20e98e5e35c796c1b37d1b10e86bdc899576060e51b193cd9aeac6589ba7"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "orbit-cli")
  end

  test do
    assert_match "orbit #{version}", shell_output("#{bin}/orbit --version")

    # Verify init creates the global root
    system bin/"orbit", "init", "--root", testpath/".orbit"
    assert_predicate testpath/".orbit/config.toml", :exist?
  end
end
