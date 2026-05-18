class Forkpress < Formula
  desc "Single-binary WordPress branching environment"
  homepage "https://github.com/Automattic/forkpress"
  version "0.1.37"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.37/forkpress-aarch64-apple-darwin.tar.gz"
      sha256 "58ba979d89aef9ced5b0a250bb2f0e6e2134b5628de4c0f7acba584f30e59036"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.37/forkpress-x86_64-apple-darwin.tar.gz"
      sha256 "53c699b7e91ba3f0b955e2c33a97312f2073a3e75a5193943bad8a104443f2b1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.37/forkpress-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d7190e9ac91c30c2eb1c92b7111cba04812c18da14bc27f51feaff08f9264693"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.37/forkpress-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5de49c13b3ddd3f809f4eb5c773bb7c6117b6b60943b84e0f8aa6beb5e10e5bb"
    end
  end

  def install
    bin.install "forkpress"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/forkpress --version")
  end
end
