class Forkpress < Formula
  desc "Single-binary WordPress branching environment"
  homepage "https://github.com/Automattic/forkpress"
  version "0.1.21"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.21/forkpress-aarch64-apple-darwin.tar.gz"
      sha256 "66ae5b3b814d99b4f915cb055f2cc765b59e762c7b38ba9cd43f87270eb1dfb5"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.21/forkpress-x86_64-apple-darwin.tar.gz"
      sha256 "1d0654c4e7d1730f3ea6328aa3b6f52e9afdca4784c1f19be6b91413e7a22728"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.21/forkpress-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e62d53bb483e42e1c2cbc50a79536f88a364032b97e7fdf152e3bbc929a4d138"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.21/forkpress-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f0bf876cc267c6a35b122fc4edeefc39b9fc67410ef81db0307abc19c1d9beca"
    end
  end

  def install
    bin.install "forkpress"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/forkpress --version")
  end
end
