class LocalData < Formula
  desc "Local Hadoop + Hive + Spark development environment for macOS"
  homepage "https://github.com/danieljhkim/local-data-platform"
  url "https://github.com/danieljhkim/local-data-platform/releases/download/v0.3.1/local-data_0.3.1_darwin_arm64.tar.gz"
  sha256 "5b73683c839d0fdef74816974473acb06065825abc388c0f74a6c9f2b9927fd3"
  license "MIT"
  version "0.3.1"

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