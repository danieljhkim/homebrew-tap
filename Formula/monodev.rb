class Monodev < Formula
  desc "Local-only CLI for managing reusable dev overlays across large monorepos"
  homepage "https://github.com/danieljhkim/monodev"
  url "https://github.com/danieljhkim/monodev/releases/download/v0.2.5/monodev_0.2.5_darwin_arm64.tar.gz"
  sha256 "df081da07f93fbaf36955162ca8117d02764469ca83aa7483df8c1c47d488f9f"
  version "0.2.5"

  def install
    bin.install "monodev"
  end

  test do
    system "#{bin}/monodev", "--help"
  end
end