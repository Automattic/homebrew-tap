class Forkpress < Formula
  desc "Single-binary WordPress branching environment"
  homepage "https://github.com/Automattic/forkpress"
  version "0.1.32"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.32/forkpress-aarch64-apple-darwin.tar.gz"
      sha256 "80e44273be3fd2fbc50b1cb4a899bdeb688f73cbb7ec290c683f5bc4e4029520"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.32/forkpress-x86_64-apple-darwin.tar.gz"
      sha256 "b6455b277873f28805de615748c89871a1159c3e516496a62bb1705a32a997d6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.32/forkpress-aarch64-unknown-linux-musl.tar.gz"
      sha256 "901e13dc87d0d31a70562fe0bd12645a8e138d656b13f7ef34b0040a64c8f5a1"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.32/forkpress-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c2e6787eea8a19818faebfb17d3d64d9af15f822a9a9cf4f891e9be6d52106e1"
    end
  end

  def install
    bin.install "forkpress"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/forkpress --version")
  end
end
