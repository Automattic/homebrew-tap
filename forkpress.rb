class Forkpress < Formula
  desc "Single-binary WordPress branching environment"
  homepage "https://github.com/Automattic/forkpress"
  version "0.1.47"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.47/forkpress-aarch64-apple-darwin.tar.gz"
      sha256 "be2b5844bea53082f1595dfaa614eab5e9dc46d251e05a162ce409924b46a49c"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.47/forkpress-x86_64-apple-darwin.tar.gz"
      sha256 "5e75ed81142cf456f1f82cedcfa9addc97e8529670dc99595f7d6066c0cdfb65"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.47/forkpress-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b56af80989696d3aa38ba0297d4bacbbbc5df35418358a5022b08261a919eb4a"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.47/forkpress-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d91239bba5141ae529588e138790a67273c111c8fd80ef800ca41597cccbf4ab"
    end
  end

  def install
    bin.install "forkpress"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/forkpress --version")
  end
end
