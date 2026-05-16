class Forkpress < Formula
  desc "Single-binary WordPress branching environment"
  homepage "https://github.com/Automattic/forkpress"
  version "0.1.24"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.24/forkpress-aarch64-apple-darwin.tar.gz"
      sha256 "9a389877c284633d46f0176afacb95a29a7ee2ba17950e831e8e131b159c4eb3"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.24/forkpress-x86_64-apple-darwin.tar.gz"
      sha256 "abb8768b97651104b880a376b7c40ee66caad09c9f904f5decb0af82a0ad8236"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.24/forkpress-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5d72de52ff2246eefbab1fca48ca6df9b50cc185ebffc83ca739627af4c0032c"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.24/forkpress-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0553a4508d430b54fb09c24c0ff008457fac9b9473bab63b7bc2d954e0513d3f"
    end
  end

  def install
    bin.install "forkpress"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/forkpress --version")
  end
end
