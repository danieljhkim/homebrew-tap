class Monodev < Formula
  desc "Local-only CLI for managing reusable dev overlays across large monorepos"
  homepage "https://github.com/danieljhkim/monodev"
  url "https://github.com/danieljhkim/monodev/releases/download/v0.3.1/monodev_0.3.1_darwin_arm64.tar.gz"
  sha256 "1cbba633f9b8537accb8284bc0a9452a33a63ef24e542d9980ba41ac67b0c15d"
  version "0.3.1"

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