class Monodev < Formula
  desc "Local-only CLI for managing reusable dev overlays across large monorepos"
  homepage "https://github.com/danieljhkim/monodev"
  url "https://github.com/danieljhkim/monodev/releases/download/v0.2.8/monodev_0.2.8_darwin_arm64.tar.gz"
  sha256 "5a3ff3e242b165f1154c4ce251d5876321f3f57bdb231c0ec49467bb63e5c768"
  version "0.2.8"

  def install
    bin.install "monodev"
  end

  test do
    system "#{bin}/monodev", "--help"
  end
end