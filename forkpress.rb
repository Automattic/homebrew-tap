class Forkpress < Formula
  desc "Single-binary WordPress branching environment"
  homepage "https://github.com/Automattic/forkpress"
  version "0.1.40"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.40/forkpress-aarch64-apple-darwin.tar.gz"
      sha256 "5e09eaedf6d82da2317e1ae853abf3d0ab7e0a16e61f4c2a91cf2bf1d5433c61"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.40/forkpress-x86_64-apple-darwin.tar.gz"
      sha256 "08e8b78caf571339af253eaf4a890d6d133fb47c396272dcba82863b022b19e3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.40/forkpress-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2bc405993219c830988c8af52a8a1f318901682e5e4fb44eca1b8284a9634123"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.40/forkpress-x86_64-unknown-linux-musl.tar.gz"
      sha256 "39f98ebd0f5e6d0fddab2636799ce91c7cc0ed94468c7bde2b9dae2d3663ae02"
    end
  end

  def install
    bin.install "forkpress"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/forkpress --version")
  end
end
