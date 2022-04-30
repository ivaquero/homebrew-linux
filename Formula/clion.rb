class Clion < Formula
    desc "A cross-platform IDE for C and C++"
    homepage "http://www.jetbrains.com/clion/"
    version "2022.1"
    url "https://download.jetbrains.com/cpp/CLion-#{version}.tar.gz"
    sha256 "a8ad8db6362d60a5ce60a7552110887dbd12e8420c839c368b55808b68dea38b"

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/clion.sh" => "clion")
    end

    def caveats; <<~EOS
        Executable is linked as "clion".
        EOS
    end
end
