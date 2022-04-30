class IntellijIdeaCe < Formula
    
    version "2022.1"

    url "https://download.jetbrains.com/idea/ideaIC-#{version}.tar.gz"
    sha256 "0400e6152fa0173e4e9a514c6398eef8f19150893298658c0b3eb1427e5bcbe5"

    desc "The Most Intelligent Java IDE, community edition."
    homepage "http://www.jetbrains.com/idea/"
    
    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/idea.sh" => "ideac")
    end

    def caveats; <<~EOS
        Executable is linked as "ideac".
        EOS
    end
end
