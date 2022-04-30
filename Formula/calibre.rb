class Calibre < Formula
  desc "A powerful and easy to use e-book manager"
  homepage "https://calibre-ebook.com/"
  version "5.41.0"

  url "https://github.com/kovidgoyal/calibre/releases/download/v#{version}/calibre-#{version}-x86_64.txz"
  sha256 "d04a92edb337d6f9b7c28ae05cb34ebdf77d4d0b7a32b2d424ac76dbd32bace9"
  
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
