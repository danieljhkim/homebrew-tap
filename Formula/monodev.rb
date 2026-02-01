class Monodev < Formula
  desc "Local-only CLI for managing reusable dev overlays across large monorepos"
  homepage "https://github.com/danieljhkim/monodev"
  url "https://github.com/danieljhkim/monodev/releases/download/v0.2.3/monodev_0.2.3_darwin_arm64.tar.gz"
  sha256 "df0d4f9afb1e927c7a57f98ff9f2ff0faf98c994c92a94589e46b3febcc788dc"
  version "0.2.3"

  def install
    bin.install "monodev"
  end

  test do
    system "#{bin}/monodev", "--help"
  end
end