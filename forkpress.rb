class Forkpress < Formula
  desc "Single-binary WordPress branching environment"
  homepage "https://github.com/Automattic/forkpress"
  version "0.1.20"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.20/forkpress-aarch64-apple-darwin.tar.gz"
      sha256 "ac4425ca7dd00636630113bdecaa41fb4b3f1cecac49ceb195cdd98f4cb42f80"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.20/forkpress-x86_64-apple-darwin.tar.gz"
      sha256 "bce71e0c181fd5270b1936fa5cb15c0411516c8845ef49188fe301f7f18b6884"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.20/forkpress-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f6bf12ea0814fde0b547d834aed5ca33dda36ac7959f1a305250a540674b3952"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.20/forkpress-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1830ca7c0fb0f5e1396866e38c0b8146046deb477d6d65d51b1e3717f89841de"
    end
  end

  def install
    bin.install "forkpress"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/forkpress --version")
  end
end
