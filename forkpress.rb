class Forkpress < Formula
  desc "Single-binary WordPress branching environment"
  homepage "https://github.com/Automattic/forkpress"
  version "0.1.45"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.45/forkpress-aarch64-apple-darwin.tar.gz"
      sha256 "a4a52e7d2681cc60b84551620fa76909a32e9c84361cdb22701642f7a97051c5"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.45/forkpress-x86_64-apple-darwin.tar.gz"
      sha256 "89aed1d61e1e74fd9e3f7cacd120e034014b8fa747b2ea8252d6465521b48147"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.45/forkpress-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f13fde218549c284352b302f012ab8a1516a7743563124aa200cef75b8c87fde"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.45/forkpress-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ead7934946df3c594321b64dc91dda313ddde7ae5bdffdaa5759e22fe0e6499c"
    end
  end

  def install
    bin.install "forkpress"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/forkpress --version")
  end
end
