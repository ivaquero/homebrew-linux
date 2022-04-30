class Webstorm < Formula
    
    version "2022.1"

    url "https://download.jetbrains.com/webstorm/WebStorm-#{version}.tar.gz"
    sha256 "d9dd5815cc456d74f7dc47533ade3990d0f2f9ce0c4dab3d5ae9b04e01d1746c"

    desc "The smartest JavaScript IDE."
    homepage "http://www.jetbrains.com/webstorm/"
    
    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/webstorm.sh" => "webstorm")
    end

    def caveats; <<~EOS
        Executable is linked as "webstorm".
        EOS
    end
end
