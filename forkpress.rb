class Forkpress < Formula
  desc "Single-binary WordPress branching environment"
  homepage "https://github.com/Automattic/forkpress"
  version "0.1.43"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.43/forkpress-aarch64-apple-darwin.tar.gz"
      sha256 "7b47f465477c998f93529be387c4916d62722fb08a995fce5d84581f092966a5"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.43/forkpress-x86_64-apple-darwin.tar.gz"
      sha256 "54138eb5d1fe2221f6f8ccbd3a04beda996446a023702b5214ab84b0d8f2ac4a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.43/forkpress-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8cfa291a83d4100423ff8b501c3f0430105834f7fde5d483505d131a988b91d6"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.43/forkpress-x86_64-unknown-linux-musl.tar.gz"
      sha256 "213f92b6681e0a39d6490fa1343050ea8ce65a69cf036ee483a1227b2fe61ca1"
    end
  end

  def install
    bin.install "forkpress"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/forkpress --version")
  end
end
