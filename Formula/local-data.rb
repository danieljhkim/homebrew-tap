class LocalData < Formula
  desc "Local Hadoop + Hive + Spark development environment for macOS"
  homepage "https://github.com/danieljhkim/local-data-platform"
  version "0.4.1"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/danieljhkim/local-data-platform/releases/download/v0.4.1/local-data_0.4.1_darwin_arm64.tar.gz"
    sha256 "836a5e0b2de7f4f73290380e4aae52b373cea2239c8246264b5ef22686475609"
  else
    url "https://github.com/danieljhkim/local-data-platform/releases/download/v0.4.1/local-data_0.4.1_darwin_amd64.tar.gz"
    sha256 "2cdb28566b16636e6dc013f880d7d0bd59d8a2857f90a23714fe4ab8ff8a2100"
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
