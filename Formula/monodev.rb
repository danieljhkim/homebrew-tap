class Monodev < Formula
  desc "Local-only CLI for managing reusable dev overlays across large monorepos"
  homepage "https://github.com/danieljhkim/monodev"
  url "https://github.com/danieljhkim/monodev/releases/download/v0.1.0/monodev_0.1.0_darwin_arm64.tar.gz"
  sha256 "6688a2ad4e61719186d917d33679f643796281f2995a66ef8e645b74bd4e5192"
  version "0.1.0"

  def install
    bin.install "monodev"
  end

  test do
    system "#{bin}/monodev", "--help"
  end
end