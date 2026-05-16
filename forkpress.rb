class Forkpress < Formula
  desc "Single-binary WordPress branching environment"
  homepage "https://github.com/Automattic/forkpress"
  version "0.1.30"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.30/forkpress-aarch64-apple-darwin.tar.gz"
      sha256 "2fd2d84035032e1da2dfed9d1792b15b090ded75fee34249bb1cdb976591143d"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.30/forkpress-x86_64-apple-darwin.tar.gz"
      sha256 "ceac741326df99c6f8a1aa32071974954582878c8033774dae7441d9ae69b07a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.30/forkpress-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f35eed562d17ac0da7b0b91153f684595fe016d0095943ee4df006bb8e52c32d"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.30/forkpress-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d6150df87f4bbcc28f3e5efee76e610b6362b6adeb480c741f37846f3eebecb8"
    end
  end

  def install
    bin.install "forkpress"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/forkpress --version")
  end
end
