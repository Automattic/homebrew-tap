require "language/node"

class CloudupCli < Formula
  desc "cloudup command-line executable"
  homepage "https://github.com/Automattic/cloudup-cli"
  head "https://github.com/Automattic/cloudup-cli.git"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "false"
    system "up -v"
  end
end
