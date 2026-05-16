class Forkpress < Formula
  desc "Single-binary WordPress branching environment"
  homepage "https://github.com/Automattic/forkpress"
  version "0.1.15"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.15/forkpress-aarch64-apple-darwin.tar.gz"
      sha256 "bb7fec5ae79f0d900da7240a5c285afe2c773d3e68f6b203423999b8c037a608"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.15/forkpress-x86_64-apple-darwin.tar.gz"
      sha256 "65c45c9182cea1aa6a9f0b3f6aa118ac2b592f0d33f5f2b31c9626e57059cd4d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.15/forkpress-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e6ec75472cf979ddc6fb1eaaba542d791399de2b2bbfb126f6526881e1cc2318"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.15/forkpress-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fd444c2d50b7e319555a41388bd923e6d66c3325dc119e55379ebe5b49ef54d8"
    end
  end

  def install
    bin.install "forkpress"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/forkpress --version")
  end
end
