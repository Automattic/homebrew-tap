class Forkpress < Formula
  desc "Single-binary WordPress branching environment"
  homepage "https://github.com/Automattic/forkpress"
  version "0.1.28"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.28/forkpress-aarch64-apple-darwin.tar.gz"
      sha256 "c38fd37310c231b96a3dedea648eaeec6549bda74722cfd868127eb6e80c8e17"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.28/forkpress-x86_64-apple-darwin.tar.gz"
      sha256 "8593d3341ceba36b893591763205178a06ef7547cc41493f28256977997dae5f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.28/forkpress-aarch64-unknown-linux-musl.tar.gz"
      sha256 "45f3a5ed8f906e8692fb05a63719c4064348dcb7cb9b895c2197a38089461457"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.28/forkpress-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4cd92d31cabd59fc9be1d35d35eec3f9bc5452454d8ca0ba7f1620a5a00cc588"
    end
  end

  def install
    bin.install "forkpress"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/forkpress --version")
  end
end
