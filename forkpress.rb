class Forkpress < Formula
  desc "Single-binary WordPress branching environment"
  homepage "https://github.com/Automattic/forkpress"
  version "0.1.46"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.46/forkpress-aarch64-apple-darwin.tar.gz"
      sha256 "50c7ad8bece2154e88b976b4384cbc5e3155d559dfe53a05ed08af1e95182c6f"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.46/forkpress-x86_64-apple-darwin.tar.gz"
      sha256 "754d1357315b7913583e24a390fcd8067f371dfcd7fa0643483bd41c43a238cb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.46/forkpress-aarch64-unknown-linux-musl.tar.gz"
      sha256 "106a38adec7f26dd288483dd3f8e37e482631505d9829d39d111bede34588e39"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.46/forkpress-x86_64-unknown-linux-musl.tar.gz"
      sha256 "df4371c0d5034f8ce41fa13b777d101c8674e759dd1c3540a56e7eb37a70139c"
    end
  end

  def install
    bin.install "forkpress"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/forkpress --version")
  end
end
