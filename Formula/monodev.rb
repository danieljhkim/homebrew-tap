class Monodev < Formula
  desc "Local-only CLI for managing reusable dev overlays across large monorepos"
  homepage "https://github.com/danieljhkim/monodev"
  url "https://github.com/danieljhkim/monodev/releases/download/v0.2.2/monodev_0.2.2_darwin_arm64.tar.gz"
  sha256 "3ecb7624f771b308715ed7f8a66867115740b7148a7701be52ab64183b9435c7"
  version "0.2.2"

  def install
    bin.install "monodev"
  end

  test do
    system "#{bin}/monodev", "--help"
  end
end