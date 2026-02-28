class Monodev < Formula
  desc "Local-only CLI for managing reusable dev overlays across large monorepos"
  homepage "https://github.com/danieljhkim/monodev"
  url "https://github.com/danieljhkim/monodev/releases/download/v0.2.6/monodev_0.2.6_darwin_arm64.tar.gz"
  sha256 "7bbceed79f6045c34228cc631bdf5625d4421c6472b6808da2c2d35537b30c77"
  version "0.2.6"

  def install
    bin.install "monodev"
  end

  test do
    system "#{bin}/monodev", "--help"
  end
end