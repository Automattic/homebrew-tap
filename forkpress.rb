class Forkpress < Formula
  desc "Single-binary WordPress branching environment"
  homepage "https://github.com/Automattic/forkpress"
  version "0.1.18"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.18/forkpress-aarch64-apple-darwin.tar.gz"
      sha256 "e749629f7b776fbe6d83542f2182eb3cf42afdf6e746c256091ad77e999f2a31"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.18/forkpress-x86_64-apple-darwin.tar.gz"
      sha256 "3ea1bdaa6af881d260aa61a684becf3cac12e149e90c622a25bd1bff3ac36b17"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.18/forkpress-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6d505974214364177ad3d6068dc0a6c5fa310ad2645c2204a9ba241b32565449"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.18/forkpress-x86_64-unknown-linux-musl.tar.gz"
      sha256 "822ddc4540c4ad0380ee012b279004a1ccb97591e760684f0df079b2a132d106"
    end
  end

  def install
    bin.install "forkpress"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/forkpress --version")
  end
end
