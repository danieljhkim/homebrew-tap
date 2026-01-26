class Monodev < Formula
  desc "Local-only CLI for managing reusable dev overlays across large monorepos"
  homepage "https://github.com/danieljhkim/monodev"
  url "https://github.com/danieljhkim/monodev/releases/download/v0.2.0/monodev_0.2.0_darwin_arm64.tar.gz"
  sha256 "54b5d5a32155432794292e8fc16b76d2c0561351622f97f45d251089800a24b6"
  version "0.2.0"

  def install
    bin.install "monodev"
  end

  test do
    system "#{bin}/monodev", "--help"
  end
end