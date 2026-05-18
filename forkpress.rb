class Forkpress < Formula
  desc "Single-binary WordPress branching environment"
  homepage "https://github.com/Automattic/forkpress"
  version "0.1.41"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.41/forkpress-aarch64-apple-darwin.tar.gz"
      sha256 "94a052656fb6c270d6b0f7fa9ee70f960c14ebcf18108887396bbda72ddf8571"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.41/forkpress-x86_64-apple-darwin.tar.gz"
      sha256 "b7b009e03d69831ed34e28ce1613f0cbf2a3c7927095f779397ff68cfbf1a97b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.41/forkpress-aarch64-unknown-linux-musl.tar.gz"
      sha256 "058df6b4e651e14fada4e73d4f4efdc442631f4db19f00402ee75ca3f35a2c3c"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.41/forkpress-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b1f0249e15204909f9111cf1a591a43d519cb394bbf668c9df50f25f7a70203a"
    end
  end

  def install
    bin.install "forkpress"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/forkpress --version")
  end
end
