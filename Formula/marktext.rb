class Marktext < Formula
   
    version "0.17.1"

    url "https://github.com/marktext/marktext/releases/download/v#{version}/marktext-x64.tar.gz"
    sha256 "5fce5febe1a85e3875a018bdb9581ed1e3174143eee570aa3e45014645445145"

    desc "Next generation markdown editor, running on platforms of MacOS Windows and Linux."
    homepage "https://github.com/marktext/marktext"

    def install
      prefix.install Dir["*"]
      bin.install_symlink("#{libexec}/marktext" => "marktext")
    end

    def caveats; <<~EOS
        Executable is linked as "marktext".
        EOS
    end
end
