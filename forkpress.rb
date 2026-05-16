class Forkpress < Formula
  desc "Single-binary WordPress branching environment"
  homepage "https://github.com/Automattic/forkpress"
  version "0.1.19"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.19/forkpress-aarch64-apple-darwin.tar.gz"
      sha256 "7cfcba340e75f2f0a3362b68ba8e1f6d168eaa6379ccf03059e4e19ced5c62b6"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.19/forkpress-x86_64-apple-darwin.tar.gz"
      sha256 "23c5923410e28852ab9a808dce59c315ad0f8bbc8488a66c8bcebe974c661888"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.19/forkpress-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a7dde89fb6098cfa1ce4cda8d9aa4ba27875304e5c40bbdd4b8c1551b9da39a3"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.19/forkpress-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f92d79544d49b6ded0aa090f7fbd08833b59ef734f404b9b2a085194aa445c48"
    end
  end

  def install
    bin.install "forkpress"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/forkpress --version")
  end
end
