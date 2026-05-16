class Forkpress < Formula
  desc "Single-binary WordPress branching environment"
  homepage "https://github.com/Automattic/forkpress"
  version "0.1.23"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.23/forkpress-aarch64-apple-darwin.tar.gz"
      sha256 "beecf99444d4d5e2abb8cf48a75fdf5f66c7500ef3fc1b3e31b95f57d732c1ff"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.23/forkpress-x86_64-apple-darwin.tar.gz"
      sha256 "62157d62013ceb7e470e7433fcfba45f46afc5739828fe38e907a927b8545da1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.23/forkpress-aarch64-unknown-linux-musl.tar.gz"
      sha256 "424278e12ea11e519a6e4dac71c0cf48a9b7718142882be397fa9d3d4c3314e3"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.23/forkpress-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c363dfff3108b5754d5880c341751061ac4f78f411969c25447156d11ba9f6a4"
    end
  end

  def install
    bin.install "forkpress"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/forkpress --version")
  end
end
