class Forkpress < Formula
  desc "Single-binary WordPress branching environment"
  homepage "https://github.com/Automattic/forkpress"
  version "0.1.26"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.26/forkpress-aarch64-apple-darwin.tar.gz"
      sha256 "0facad98cdf623013dff88b26e719062eb4b04c651bdfd15439c47b99273b72f"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.26/forkpress-x86_64-apple-darwin.tar.gz"
      sha256 "bf7086d305a800761152e38f961ea6b6372514033e71508d3988f505d348b791"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.26/forkpress-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0c0b14b0a3dec845d1b2a69db5486c5548a89efbc93b5cbaa87c914aa5b36b95"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.26/forkpress-x86_64-unknown-linux-musl.tar.gz"
      sha256 "627b3b69b1503dbc33892a30afae80f5e66064b157da46644522627511f7f924"
    end
  end

  def install
    bin.install "forkpress"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/forkpress --version")
  end
end
