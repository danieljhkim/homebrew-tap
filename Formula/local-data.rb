class LocalData < Formula
  desc "Local Hadoop + Hive + Spark development environment for macOS"
  homepage "https://github.com/danieljhkim/local-data-platform"
  version "0.5.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/danieljhkim/local-data-platform/releases/download/v0.5.0/local-data_0.5.0_darwin_arm64.tar.gz"
    sha256 "31dfd93646a8fb76b4486c760b4631ca0b37061facc62357d626dae0ca765df8"
  else
    url "https://github.com/danieljhkim/local-data-platform/releases/download/v0.5.0/local-data_0.5.0_darwin_amd64.tar.gz"
    sha256 "a82bc9c0be8302a905116b132cdfc3d755cdc5439906749888b5433ed5cc5542"
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
