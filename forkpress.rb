class Forkpress < Formula
  desc "Single-binary WordPress branching environment"
  homepage "https://github.com/Automattic/forkpress"
  version "0.1.39"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.39/forkpress-aarch64-apple-darwin.tar.gz"
      sha256 "1958e4e65cb3a247cbafdfd9d951f66ef866f49afd9a2e7d76a47c9250b36c62"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.39/forkpress-x86_64-apple-darwin.tar.gz"
      sha256 "3e6bb4ecd9babfe1f40b484e977c2e161e9cba5c1d8303b6862878a10e5219f5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.39/forkpress-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e9f8a72e0084585391cd109876a393d818e7a3ea3d5a7f1e613e03355b43d77f"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.39/forkpress-x86_64-unknown-linux-musl.tar.gz"
      sha256 "100cd9e569d1b22f30cb1187e69c92ff195d1ad1f92ca1dbab7bb4d06dca33cd"
    end
  end

  def install
    bin.install "forkpress"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/forkpress --version")
  end
end
