class LocalData < Formula
  desc "Local Hadoop + Hive + Spark development environment for macOS"
  homepage "https://github.com/danieljhkim/local-data-platform"
  version "0.5.1"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/danieljhkim/local-data-platform/releases/download/v0.5.1/local-data_0.5.1_darwin_arm64.tar.gz"
    sha256 "52ba957fa1db51e785498dd8c92fc9e04fbcab1b3f3f838508474b812651637c"
  else
    url "https://github.com/danieljhkim/local-data-platform/releases/download/v0.5.1/local-data_0.5.1_darwin_amd64.tar.gz"
    sha256 "a83a1a4277ee554703305aa8b5259d64f5f9200677392d0b12bd0e42cd0f6c08"
  end

  depends_on "apache-spark"
  depends_on "hadoop"
  depends_on "hive"
  depends_on "openjdk@17"

  def install
    bin.install "local-data"
  end

  test do
    system "#{bin}/local-data", "version"
  end
end
