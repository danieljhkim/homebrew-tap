class Orbit < Formula
  desc "Local-first agentic workflow engine for agent-driven software delivery"
  homepage "https://github.com/danieljhkim/orbit"
  url "https://github.com/danieljhkim/orbit/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "<REPLACE_WITH_SHA256>"
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
