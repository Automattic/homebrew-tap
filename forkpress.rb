class Forkpress < Formula
  desc "Single-binary WordPress branching environment"
  homepage "https://github.com/Automattic/forkpress"
  version "0.1.16"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.16/forkpress-aarch64-apple-darwin.tar.gz"
      sha256 "c31c25b06554d419cbc7c8a1d100d53a5313713222c660fc358a36024efe9af6"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.16/forkpress-x86_64-apple-darwin.tar.gz"
      sha256 "71d97a3da614978da59de9476757c57d6b75a434220d1132f4be527e469d2168"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.16/forkpress-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c0dca25935164893385fdc7e7534e449ca8eb8b0055620dad4292bb3d5f6cc96"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.16/forkpress-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2d7d58db03e13a7f7bdb7cb44320f6468a2e413e7edae095efe8b5252f7aeaad"
    end
  end

  def install
    bin.install "forkpress"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/forkpress --version")
  end
end
