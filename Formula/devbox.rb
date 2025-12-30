class Devbox < Formula
  desc "Repo-local execution contract and tooling wrapper"
  homepage "https://github.com/danieljhkim/DevBox"
  url "https://github.com/danieljhkim/DevBox/releases/download/v0.2.1/devbox_0.2.1_all.tar.gz"
  sha256 "b0bfc4126cc8a4e3a6db42234994646ab6889ab8970804958345a2d9142a4431"
  version "0.2.1"

  def install
    # Support both archive layouts:
    #  A) Nested: devbox/ (directory) containing devbox, bin/, .box/, ...
    #  B) Flat: devbox (file) + bin/, .box/, ... at the archive root
    home = nil

    if File.directory?("devbox")
      # Installing a directory preserves dot-directories like .box.
      libexec.install "devbox"
      home = libexec/"devbox"
    else
      # Include dotfiles/directories (e.g., .box/) via explicit globs.
      entries = Dir["*"] + Dir[".[!.]*"] + Dir["..?*"]
      entries.reject! { |p| p == "." || p == ".." }
      libexec.install entries
      home = libexec
    end

    (bin/"devbox").write <<~EOS
      #!/bin/bash
      set -euo pipefail
      export DEVBOX_HOME="#{home}"
      exec "#{home}/devbox" "$@"
    EOS
  end

  test do
    system "#{bin}/devbox", "--help"
  end
end