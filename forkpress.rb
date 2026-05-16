class Forkpress < Formula
  desc "Single-binary WordPress branching environment"
  homepage "https://github.com/Automattic/forkpress"
  version "0.1.17"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.17/forkpress-aarch64-apple-darwin.tar.gz"
      sha256 "3cb7bfe67bd90800fd150779f0d070c6c71b01756b3c65e1ed99c2cfd8c76b0c"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.17/forkpress-x86_64-apple-darwin.tar.gz"
      sha256 "efdc976579e1e2449dfd68e85ada6fbd81965101e84c2b66dc3994280f577d9c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.17/forkpress-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3c4659774bb67f3136c8ab9a70d0fc04d2e08df7e373aac4fe2782ec60093e32"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.17/forkpress-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bf8812c0b8f96c9d6260caba19db7fcbbd5a509841b0c8e604a68c38b15d3b66"
    end
  end

  def install
    bin.install "forkpress"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/forkpress --version")
  end
end
