class Devbox < Formula
  desc "Repo-local execution contract and tooling wrapper"
  homepage "https://github.com/danieljhkim/DevBox"
  url "https://github.com/danieljhkim/DevBox/releases/download/v0.2.1/devbox_0.2.1_all.tar.gz"
  sha256 "6e16a0ab326d1916ff9e3ea7e7cd6a03f42684a11327f5eda60b9517d3dcb425"
  version "0.2.1"

  def install
    libexec.install Dir["*"]

    (bin/"devbox").write <<~EOS
      #!/bin/bash
      set -euo pipefail
      export DEVBOX_HOME="#{libexec}"
      exec "#{libexec}/devbox" "$@"
    EOS
  end

  test do
    system "#{bin}/devbox", "--help"
  end
end