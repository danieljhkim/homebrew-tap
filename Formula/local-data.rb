class LocalData < Formula
  desc "Local Hadoop + Hive + Spark development environment for macOS"
  homepage "https://github.com/danieljhkim/local-data-platform"
  url "https://github.com/danieljhkim/local-data-platform/releases/download/v0.3.0/local-data_0.3.0_darwin_arm64.tar.gz"
  sha256 "f74e0517ebd19990d292916a051bc8853f6f194a9725db1b853699145a86e43e"
  license "MIT"
  version "0.3.0"

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