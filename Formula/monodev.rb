class Monodev < Formula
  desc "Local-only CLI for managing reusable dev overlays across large monorepos"
  homepage "https://github.com/danieljhkim/monodev"
  url "https://github.com/danieljhkim/monodev/releases/download/v0.1.0/monodev_0.1.0_darwin_arm64.tar.gz"
  sha256 "<REPLACE_WITH_SHA256>"
  version "0.1.0"

  def install
    bin.install "monodev"
  end

  test do
    system "#{bin}/monodev", "--help"
  end
end