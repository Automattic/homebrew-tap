class Forkpress < Formula
  desc "Single-binary WordPress branching environment"
  homepage "https://github.com/Automattic/forkpress"
  version "0.1.33"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.33/forkpress-aarch64-apple-darwin.tar.gz"
      sha256 "c99dbd814bd06f5131fdf9ed5cdfba01e64d390ff70f6c2b91b23e7e87bee347"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.33/forkpress-x86_64-apple-darwin.tar.gz"
      sha256 "6bcae79b6900dab0fa82d084383bcf7c1bc3f28011632fb87fefc371168f449c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.33/forkpress-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7377408d6df15546c3eaccd434e4f141d7c6c3878b31d4a66a699df510da511d"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.33/forkpress-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8f7fa6fbab9971cef3fd7d08118aacf8bb9842e221376df0d987d1ae2b37c122"
    end
  end

  def install
    bin.install "forkpress"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/forkpress --version")
  end
end
