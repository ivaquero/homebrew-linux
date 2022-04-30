class PycharmCe < Formula
    
    version "2022.1"

    url "https://download.jetbrains.com/python/pycharm-community-#{version}.tar.gz"
    sha256 "35d857df0ac4bd76caba60ac329c9183594be142094d0592f2afa40534be85eb"

    desc "Python IDE for Professional Developers, community edition."
    homepage "http://www.jetbrains.com/pycharm/"
    
    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/pycharm.sh" => "pycharmc")
    end

    def caveats; <<~EOS
        Executable is linked as "pycharmc".
        EOS
    end
end
