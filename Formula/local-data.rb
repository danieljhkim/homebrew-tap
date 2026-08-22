class LocalData < Formula
  desc "Local Hadoop + Hive + Spark development environment for macOS"
  homepage "https://github.com/danieljhkim/local-data-platform"
  url "https://github.com/danieljhkim/local-data-platform/releases/download/v0.3.3/local-data_0.3.3_darwin_arm64.tar.gz"
  sha256 "75c738c0d0e2eccd3d2a839b5f9c1aaf7d212f28371950ef475215660135862c"
  license "MIT"
  version "0.3.3"

  depends_on "openjdk@17"
  depends_on "hadoop"
  depends_on "hive"
  depends_on "apache-spark"

  def install
    bin.install "local-data"
  end

  test do
    system "#{bin}/local-data", "version"
  end
end