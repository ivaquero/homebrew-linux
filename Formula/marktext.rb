class Marktext < Formula
   
    version "0.17.1"

    url "https://github.com/marktext/marktext/releases/download/v#{version}/marktext-x64.tar.gz"
    sha256 "2e2555113e37df830ba3958efcccce7020907b12fd4162368cfd906aeda630b7"

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
