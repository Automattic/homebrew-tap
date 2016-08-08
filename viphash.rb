
class Viphash < Formula
  desc "A tool for managing a database of hashes and statuses of files for review purposes"
  homepage "https://github.com/Automattic/vip-hash/"
  url "https://github.com/Automattic/vip-hash/releases/download/6.1/viphash.phar"
  sha256 "cef6976759eb74f52d2c511aff4e841849f32ada9b2c2fdf293f837966e232ff"

  def phar_file
    class_name = self.class.name.split("::").last
    class_name.downcase + ".phar"
  end

  def phar_bin
    class_name = self.class.name.split("::").last
    class_name.downcase
  end

  def phar_wrapper
    <<-EOS.undent
      #!/usr/bin/env bash
      /usr/bin/env php -d allow_url_fopen=On -d detect_unicode=Off #{libexec}/#{@real_phar_file} "$@"
    EOS
  end

  def install
    if phar_file == phar_bin
      @real_phar_file = phar_file + ".phar"
      File.rename(phar_file, @real_phar_file)
    else
      @real_phar_file = phar_file
    end

    libexec.install @real_phar_file
    (libexec/phar_bin).write phar_wrapper
    chmod 0755, (libexec/phar_bin)
    bin.install_symlink (libexec/phar_bin)
  end

  test do
    which phar_bin
  end
end
