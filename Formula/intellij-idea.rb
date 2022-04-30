class IntellijIdea < Formula
    desc "The Most Intelligent Java IDE, ultimate edition."
    homepage "http://www.jetbrains.com/idea/"
    version "2022.1"
    url "https://download.jetbrains.com/idea/ideaIU-#{version}.tar.gz"
    sha256 "6ec9623d995e519968edfde73be7b3178bf0e345c86a08cfbfcaef341e7f346e"

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/idea.sh" => "idea")
    end

    def caveats; <<~EOS
        Executable is linked as "idea".
        EOS
    end
end
