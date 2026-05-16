class Forkpress < Formula
  desc "Single-binary WordPress branching environment"
  homepage "https://github.com/Automattic/forkpress"
  version "0.1.22"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.22/forkpress-aarch64-apple-darwin.tar.gz"
      sha256 "4d9159884ba55fa81f202ee26469d2ebd82e55d702a984c954e3239bcded8092"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.22/forkpress-x86_64-apple-darwin.tar.gz"
      sha256 "c506cbcaa7db22d600e4896d8a9dc4e7a051994115d1a914d219025d0f0e0338"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.22/forkpress-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a44bb94249b5f39ff39ea3f55fcfc54399286ce4a54ee190be8cb10c834f8c52"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.22/forkpress-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0df8c49b31a0275ee5286c89cb853fad5b78a911cfc54beac80f5af0ddb3c0fd"
    end
  end

  def install
    bin.install "forkpress"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/forkpress --version")
  end
end
