class Monodev < Formula
  desc "Local-only CLI for managing reusable dev overlays across large monorepos"
  homepage "https://github.com/danieljhkim/monodev"
  url "https://github.com/danieljhkim/monodev/releases/download/v0.4.0/monodev_0.4.0_darwin_arm64.tar.gz"
  sha256 "ed6384e6cdc7f1d306c7d9811b02e7ac4dfefa0daf750209520aff892607a9b4"
  version "0.4.0"

  def install
    bin.install "monodev"
    bash_completion.install "completions/monodev.bash"
    zsh_completion.install "completions/_monodev"
    fish_completion.install "completions/monodev.fish"
    man1.install Dir["man/*.1"]
  end

  test do
    system "#{bin}/monodev", "--help"
  end
end