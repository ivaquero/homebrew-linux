class Cryptomator < Formula
   
    version "1.6.9"

    url "https://github.com/cryptomator/cryptomator/releases/download/#{version}/Cryptomator-#{version}-tar.gz"
    sha256 "a60cfd735a34ee95ea1f541dc9f3132070a0722a236368bc001e89efa0eb7fab"

    desc "Multi-platform client-side cloud file encryption tool"
    homepage "https://cryptomator.org/"

    def install
        prefix.install Dir["*"]
        bin.install_symlink("#{libexec}/Cryptomator" => "Cryptomator")
    end

    def caveats; <<~EOS
        Executable is linked as "marktext".
        EOS
    end
end