class Calibre < Formula
  desc "A powerful and easy to use e-book manager"
  homepage "https://calibre-ebook.com/"
  version "5.40.0"

  url "https://github.com/kovidgoyal/calibre/releases/download/v#{version}/calibre-#{version}-x86_64.txz"
  sha256 "c341796af47b608f988b2bbd5ee38b10f556c2115234731d1f612a17a396b128"

  def install
    libexec.install Dir["*"]
    bin.install_symlink("#{libexec}/calibre" => "calibre")
  end

  def caveats; <<~EOS
    Executable is linked as "calibre".
    For more usage information, see "calibre --help".
    EOS
  end
end
