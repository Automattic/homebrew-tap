class Forkpress < Formula
  desc "Single-binary WordPress branching environment"
  homepage "https://github.com/Automattic/forkpress"
  version "0.1.48"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.48/forkpress-aarch64-apple-darwin.tar.gz"
      sha256 "2bcc620a2307b11fe06534742134b30993749617fafa94275a85795cb4f0ec1d"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.48/forkpress-x86_64-apple-darwin.tar.gz"
      sha256 "a669c91abeb4fb86242fc94441927ba6f0c260289c096cc59b4cee33c4713c30"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.48/forkpress-aarch64-unknown-linux-musl.tar.gz"
      sha256 "68405886f60f067af29539e5a3c8100a225c1396a16c39a725a711889f548026"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.48/forkpress-x86_64-unknown-linux-musl.tar.gz"
      sha256 "93efd205595582bb3d7af941ec5d3f92999acf3581ee48ee373e63a9e721c43c"
    end
  end

  def install
    bin.install "forkpress"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/forkpress --version")
  end
end
