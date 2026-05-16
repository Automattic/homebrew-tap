class Forkpress < Formula
  desc "Single-binary WordPress branching environment"
  homepage "https://github.com/Automattic/forkpress"
  version "0.1.29"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.29/forkpress-aarch64-apple-darwin.tar.gz"
      sha256 "893dabed80b62050aa460095a3cdc93a715e4c67ffc9e58add315f2b9ef00d43"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.29/forkpress-x86_64-apple-darwin.tar.gz"
      sha256 "ef74bd66f4a9d7f53ccdeaee0bd9aa72d6bd299542f68540e21099513a91fad0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.29/forkpress-aarch64-unknown-linux-musl.tar.gz"
      sha256 "967a78883bc576819176f41ffba734b27890d2dfe6caa50ca92a263c1e7a936e"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.29/forkpress-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2352e804067be10246d6957e321af9f5f40a21456f3888f857603198b4dc260d"
    end
  end

  def install
    bin.install "forkpress"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/forkpress --version")
  end
end
