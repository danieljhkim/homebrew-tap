class Monodev < Formula
  desc "Local-only CLI for managing reusable dev overlays across large monorepos"
  homepage "https://github.com/danieljhkim/monodev"
  url "https://github.com/danieljhkim/monodev/releases/download/v0.2.1/monodev_0.2.1_darwin_arm64.tar.gz"
  sha256 "0d949e5a890df9fd94d779013b84467edfb65877a9dcdaee613e3c5db586080c"
  version "0.2.1"

  def install
    bin.install "monodev"
  end

  test do
    system "#{bin}/monodev", "--help"
  end
end