class LocalData < Formula
  desc "Local Hadoop + Hive + Spark development environment for macOS"
  homepage "https://github.com/danieljhkim/local-data-platform"
  url "https://github.com/danieljhkim/local-data-platform/releases/download/v0.2.1/local-data_0.2.1_darwin_arm64.tar.gz"
  sha256 "673bc5db8cc36f6fb0734c155d7dd0063432b2731c46d611a0f6ed81619d17d0"
  license "MIT"
  version "0.2.1"

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