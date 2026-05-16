class Forkpress < Formula
  desc "Single-binary WordPress branching environment"
  homepage "https://github.com/Automattic/forkpress"
  version "0.1.31"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.31/forkpress-aarch64-apple-darwin.tar.gz"
      sha256 "b60a28c52cea018455ecd58112be9f0c306ac5203355efd1152353e304bb6e6e"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.31/forkpress-x86_64-apple-darwin.tar.gz"
      sha256 "ab19a0e468fab4cbfbc6befd9bc2f8faff4ef5de5f0ad64caeff86f2050bf900"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.31/forkpress-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6738a8e7653f69c2680a05fa3e4a387e8c08cddf330f54c4a862b5f13bea0d86"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.31/forkpress-x86_64-unknown-linux-musl.tar.gz"
      sha256 "38a73527242a2770a73c7c65d333cde73a995f816bba472bc83269b8fedda1a6"
    end
  end

  def install
    bin.install "forkpress"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/forkpress --version")
  end
end
