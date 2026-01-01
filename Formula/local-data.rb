class LocalData < Formula
  desc "Local Hadoop + Hive + Spark development environment for macOS"
  homepage "https://github.com/danieljhkim/local-data-platform"
  url "https://github.com/danieljhkim/local-data-platform/releases/download/v0.2.0/local-data_0.2.0_darwin_arm64.tar.gz"
  sha256 "9852ca83864da6f68adba63eade9b96faff7c68d3e1cf0960d08df1b4b91f175"
  license "MIT"
  version "0.2.0"

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