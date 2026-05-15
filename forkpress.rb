class Forkpress < Formula
  desc "Single-binary WordPress branching environment"
  homepage "https://github.com/Automattic/forkpress"
  version "0.1.14"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.14/forkpress-aarch64-apple-darwin.tar.gz"
      sha256 "7a7a0053492b87f2266392265770a1b11ee8e801da83fd4062654e7e91eaef82"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.14/forkpress-x86_64-apple-darwin.tar.gz"
      sha256 "0bed7cb3e8e7a33ac5f116feac81ba0b8aad7683e98f0a5530fab421faca934e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.14/forkpress-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a85ec28a7ae938a674f784dd1b7aaa3836630f2d0139f0a9f9bf4d785d9a55aa"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.14/forkpress-x86_64-unknown-linux-musl.tar.gz"
      sha256 "623c7de264e80209bda3c9355a7d739fcc8275c6886663017a2c8aab2ea59f85"
    end
  end

  def install
    bin.install "forkpress"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/forkpress --version")
  end
end
