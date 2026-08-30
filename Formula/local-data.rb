class LocalData < Formula
  desc "Local Hadoop + Hive + Spark development environment for macOS"
  homepage "https://github.com/danieljhkim/local-data-platform"
  version "0.4.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/danieljhkim/local-data-platform/releases/download/v0.4.0/local-data_0.4.0_darwin_arm64.tar.gz"
    sha256 "54e9bb35f5537b91117875aef4d92b9d825cab948b2262570a34af54f1e226fa"
  else
    url "https://github.com/danieljhkim/local-data-platform/releases/download/v0.4.0/local-data_0.4.0_darwin_amd64.tar.gz"
    sha256 "12697f7e733ee9804385aa6f968cf7d43a2de43afb2613844663c2b4bd38d045"
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
