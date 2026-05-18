class Forkpress < Formula
  desc "Single-binary WordPress branching environment"
  homepage "https://github.com/Automattic/forkpress"
  version "0.1.44"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.44/forkpress-aarch64-apple-darwin.tar.gz"
      sha256 "0885cb5f62e1c42d5bd6bf2d011b6bd35fa3af177ed6010e63986fc22ccbefd4"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.44/forkpress-x86_64-apple-darwin.tar.gz"
      sha256 "893eafa3a06f5d975f8d1616420695c19418066bb14d98bed8d05da5d9f72e18"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.44/forkpress-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f2a307731486a6870f0e93e3cf22a29323dae16fc29ad1c153daeb81b9691b5a"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.44/forkpress-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c484bf3af9671e8610b47b49ee8236accad664c73aee18038168d41194ebffe6"
    end
  end

  def install
    bin.install "forkpress"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/forkpress --version")
  end
end
