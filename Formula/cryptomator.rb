class Cryptomator < Formula
   
    version "1.6.9"

    url "https://github.com/cryptomator/cryptomator/releases/download/#{version}/cryptomator-#{version}-x86_64.AppImage"
    sha256 "a60cfd735a34ee95ea1f541dc9f3132070a0722a236368bc001e89efa0eb7fab"

    desc "Multi-platform client-side cloud file encryption tool"
    homepage "https://cryptomator.org/"

    def install
        prefix.install Dir["*"]
        chmod(0755, "#{prefix}/cryptomator-#{version}-x86_64.AppImage")
        bin.install_symlink("#{prefix}/cryptomator-#{version}-x86_64.AppImage" => "Cryptomator")
    end

    def caveats; <<~EOS
        Executable is linked as "marktext".
        EOS
    end
end
