class Monodev < Formula
  desc "Local-only CLI for managing reusable dev overlays across large monorepos"
  homepage "https://github.com/danieljhkim/monodev"
  url "https://github.com/danieljhkim/monodev/releases/download/v0.2.7/monodev_0.2.7_darwin_arm64.tar.gz"
  sha256 "9441861ee64b436f0d8028cb3adef730e3dc72aa1fdc595951fa67df0d0351d2"
  version "0.2.7"

  def install
    bin.install "monodev"
  end

  test do
    system "#{bin}/monodev", "--help"
  end
end