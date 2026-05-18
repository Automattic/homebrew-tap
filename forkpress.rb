class Forkpress < Formula
  desc "Single-binary WordPress branching environment"
  homepage "https://github.com/Automattic/forkpress"
  version "0.1.38"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.38/forkpress-aarch64-apple-darwin.tar.gz"
      sha256 "91fb36016179767627d9dc4e7446c0f11cdec3d1e17c7bb43973f527f750300c"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.38/forkpress-x86_64-apple-darwin.tar.gz"
      sha256 "e85b5054e752445c540b304901f9c5f0f0c8a57f23bc4f89bb5bb7adc1558edb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.38/forkpress-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4f1adb225a416607f8e904c88066132ac7f529c31bd0bbc098f1cb5166421721"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.38/forkpress-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6071f4fe582727ca96318b549859c78f5421c3054764b387640ff939552603f8"
    end
  end

  def install
    bin.install "forkpress"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/forkpress --version")
  end
end
