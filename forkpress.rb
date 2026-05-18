class Forkpress < Formula
  desc "Single-binary WordPress branching environment"
  homepage "https://github.com/Automattic/forkpress"
  version "0.1.35"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.35/forkpress-aarch64-apple-darwin.tar.gz"
      sha256 "1b7ace585c421402535edd45ccdff04b925da515354e6bf36590cc9de4e3786e"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.35/forkpress-x86_64-apple-darwin.tar.gz"
      sha256 "39f328afabdb422cbfe33c4c4ebc4ba894fb926e5142a8100051adfa38e46c46"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.35/forkpress-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5c310aec25cb368afc99df0f4c05281037804803b1cbf5d368752ebbdb95dc7e"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.35/forkpress-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3f3ce88afb71488cd1040fee25015b8776c121dd53f4b46f423d44033db9055c"
    end
  end

  def install
    bin.install "forkpress"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/forkpress --version")
  end
end
