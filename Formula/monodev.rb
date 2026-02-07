class Monodev < Formula
  desc "Local-only CLI for managing reusable dev overlays across large monorepos"
  homepage "https://github.com/danieljhkim/monodev"
  url "https://github.com/danieljhkim/monodev/releases/download/v0.2.4/monodev_0.2.4_darwin_arm64.tar.gz"
  sha256 "de264b181bd40aec5bdd88429895682de0f3e3aafeb82f7e689071b90dd94a5f"
  version "0.2.4"

  def install
    bin.install "monodev"
  end

  test do
    system "#{bin}/monodev", "--help"
  end
end