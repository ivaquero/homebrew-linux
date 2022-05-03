class Marktext < Formula
   
    version "0.17.1"

    url "https://github.com/marktext/marktext/releases/download/v#{version}/marktext-x64.tar.gz"
    sha256 "6e333bcd1e8ae0cd93e1de52bdb966fdd9b8896986acb72f13d23ae100872e5c"

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
