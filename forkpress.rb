class Forkpress < Formula
  desc "Single-binary WordPress branching environment"
  homepage "https://github.com/Automattic/forkpress"
  version "0.1.36"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.36/forkpress-aarch64-apple-darwin.tar.gz"
      sha256 "102af1b7dd0c2f79673661bef5a7b14650fa99e6bea4a63f07bd9215a202d283"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.36/forkpress-x86_64-apple-darwin.tar.gz"
      sha256 "6954802051cb6480470fc6891e6f07be9a129c960184351e88dccd7508861e20"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.36/forkpress-aarch64-unknown-linux-musl.tar.gz"
      sha256 "85aa9852c025c6b1f8b54afa5b4869521b2a4897eee838e95be7fa36595afffd"
    end

    on_intel do
      url "https://github.com/Automattic/forkpress/releases/download/v0.1.36/forkpress-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d827191e3bf5126cfa512bbc855f537acc7f35ed5e3b17f1fd8903fca0787263"
    end
  end

  def install
    bin.install "forkpress"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/forkpress --version")
  end
end
