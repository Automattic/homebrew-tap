class Forkpress < Formula
  desc "Single-binary WordPress branching environment"
  homepage "https://github.com/Automattic/forkpress"
  version "0.1.42"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.42/forkpress-aarch64-apple-darwin.tar.gz"
      sha256 "8a9f0049c4f630bea3fb27ef9f2acafb8b076542dba2b976ea055491ca6b49d1"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.42/forkpress-x86_64-apple-darwin.tar.gz"
      sha256 "26e271bc389879293d5c6c76a5b1c817c2f19325289a04b1121966d54c81e73f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.42/forkpress-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5e185442484529718ccd6a87d6d2f29dbc1c2864e68bc44a114f00f471f2ca0a"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.42/forkpress-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a67fbc1d67021f3851ee6dc467721296df3f31914291ab96e9f0eea08cc4c0a2"
    end
  end

  def install
    bin.install "forkpress"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/forkpress --version")
  end
end
