class Monodev < Formula
  desc "Local-only CLI for managing reusable dev overlays across large monorepos"
  homepage "https://github.com/danieljhkim/monodev"
  url "https://github.com/danieljhkim/monodev/releases/download/v0.4.1/monodev_0.4.1_darwin_arm64.tar.gz"
  sha256 "21e24202af9b8e06ab68b3919c08cd55081b179d61c6759b262c8d6408e55184"
  version "0.4.1"

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