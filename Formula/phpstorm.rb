class Phpstorm < Formula
    desc "Lightning-smart PHP IDE"
    homepage "http://www.jetbrains.com/phpstorm/"
    version "2022.1"
    url "https://download.jetbrains.com/webide/PhpStorm-#{version}.tar.gz"
    sha256 "e30d6991c98addcc02ab05c623d0c42797d605db73c01b7c153bf2246c877395"

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/phpstorm.sh" => "phpstorm")
    end

    def caveats; <<~EOS
        Executable is linked as "phpstorm".
        EOS
    end
end
