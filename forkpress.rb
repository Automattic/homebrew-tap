class Forkpress < Formula
  desc "Single-binary WordPress branching environment"
  homepage "https://github.com/Automattic/forkpress"
  version "0.1.27"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.27/forkpress-aarch64-apple-darwin.tar.gz"
      sha256 "901d4e84678592d487c8c58a940dff40c76523edd47075ea6ccd4dbf02f90c0d"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.27/forkpress-x86_64-apple-darwin.tar.gz"
      sha256 "fa2d2676e4f8bcf81f3329d9d1ca83b33dfd1d3c4e39f3702210a564f9ce0998"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.27/forkpress-aarch64-unknown-linux-musl.tar.gz"
      sha256 "53fcf6029b037abee30614b5d039b2bed7f87b8b819ce6366faa4a75ae660428"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.27/forkpress-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cf6446d1829f29eae4c380bcb7f6bdf5d2602610db9b086e9508989a8a1b801e"
    end
  end

  def install
    bin.install "forkpress"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/forkpress --version")
  end
end
