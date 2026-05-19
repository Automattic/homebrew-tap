class Forkpress < Formula
  desc "Single-binary WordPress branching environment"
  homepage "https://github.com/Automattic/forkpress"
  version "0.1.50"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.50/forkpress-aarch64-apple-darwin.tar.gz"
      sha256 "ca96fbd8f0a3ed4b56d9c39b44c2dbe88f140a1817226672c397222d3eab117b"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.50/forkpress-x86_64-apple-darwin.tar.gz"
      sha256 "ea4fac3f4e17ac9e9a785d5ab3d7c97b5a0912a7a11d333b808aa13f547e2bc9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.50/forkpress-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c79fe2ae5c8487b5f367eb3effef8ddf9d43ba28775a99e068e1f20ec33213ed"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.50/forkpress-x86_64-unknown-linux-musl.tar.gz"
      sha256 "20b163b894f6f4521a30289354910e7f8d185503b01c10fa63cbaea060e15c6c"
    end
  end

  def install
    bin.install "forkpress"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/forkpress --version")
  end
end
