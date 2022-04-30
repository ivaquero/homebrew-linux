class Rubymine < Formula
    
    version "2022.1"

    url "https://download.jetbrains.com/ruby/RubyMine-#{version}.tar.gz"
    sha256 "495c0d86eb7f3bed0ed692a7ae37e8b3b333c58ae891ca3891a311db6b951401"

    desc "The Most Intelligent Ruby and Rails IDE."
    homepage "http://www.jetbrains.com/ruby/"
    
    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/rubymine.sh" => "rubymine")
    end

    def caveats; <<~EOS
        Executable is linked as "rubymine".
        EOS
    end
end
