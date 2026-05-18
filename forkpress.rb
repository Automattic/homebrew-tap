class Forkpress < Formula
  desc "Single-binary WordPress branching environment"
  homepage "https://github.com/Automattic/forkpress"
  version "0.1.34"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.34/forkpress-aarch64-apple-darwin.tar.gz"
      sha256 "0d91bf2d684b1bf28f8a13e7d75da376061d05bd1c1e7fb91bd6484921057b3a"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.34/forkpress-x86_64-apple-darwin.tar.gz"
      sha256 "c0dcd3f066931cca9ea63166e389b4180b070b69a27409a62b17986ffa6c8aa0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.34/forkpress-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e917b5bac13d065fd2f7d95dd9a1685929cbf03bc06c7b2b462965189251bc18"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.34/forkpress-x86_64-unknown-linux-musl.tar.gz"
      sha256 "696c903993137968b3d33b711f22fb91082b22165aab12e9969299ceac69ad11"
    end
  end

  def install
    bin.install "forkpress"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/forkpress --version")
  end
end
