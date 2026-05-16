class Forkpress < Formula
  desc "Single-binary WordPress branching environment"
  homepage "https://github.com/Automattic/forkpress"
  version "0.1.25"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.25/forkpress-aarch64-apple-darwin.tar.gz"
      sha256 "361321fb2e746e35f367544a0d2cf622f65aadf6ce3d9f7fb2f0ec5ccb2011b8"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.25/forkpress-x86_64-apple-darwin.tar.gz"
      sha256 "32ceb7b7c7897293251d7635f0160b7cd6353071c3f52da30f10eeb10ce06052"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.25/forkpress-aarch64-unknown-linux-musl.tar.gz"
      sha256 "95c4ba15291dcc3cdc429f60419e1d2d19bf511734cab937f73e21bfe2cc3f77"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.25/forkpress-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7e4a62666469aaf5fe48ea0e072504ff89c2c555854329408a173bdf940aa8c7"
    end
  end

  def install
    bin.install "forkpress"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/forkpress --version")
  end
end
