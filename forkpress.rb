class Forkpress < Formula
  desc "Single-binary WordPress branching environment"
  homepage "https://github.com/Automattic/forkpress"
  version "0.1.49"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.49/forkpress-aarch64-apple-darwin.tar.gz"
      sha256 "5179e6717cc0bf7144dd4fa499cf71221703446a32a5368e95f984f93bfffb29"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.49/forkpress-x86_64-apple-darwin.tar.gz"
      sha256 "75d444036287a1cac7f66ca9b33fb9298b00d721db6a6cb6baaf53cfecbe893e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.49/forkpress-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b6e5b8ff4adca037f01df77c4a89ee825dd95a7fd42eb37ce5ed57794b51df38"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.49/forkpress-x86_64-unknown-linux-musl.tar.gz"
      sha256 "04f411473169286c9b244bc8c4eb5f6cde4a5a3cff4fee7389c2fcf846219505"
    end
  end

  def install
    bin.install "forkpress"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/forkpress --version")
  end
end
