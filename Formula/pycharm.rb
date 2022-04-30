class Pycharm < Formula
    desc "Python IDE for Professional Developers, professional edition."
    homepage "http://www.jetbrains.com/pycharm/"
    version "2022.1"
    url "https://download.jetbrains.com/python/pycharm-professional-#{version}.tar.gz"
    sha256 "9b160ed74f384be31ff376af73f91924a212e6440ce142a581b22f261e6cf605"

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/pycharm.sh" => "pycharm")
    end

    def caveats; <<~EOS
        Executable is linked as "pycharm".
        EOS
    end
end
