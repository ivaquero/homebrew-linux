class Cryptomator < Formula
   
    version "1.6.9"

    url "https://github.com/cryptomator/cryptomator/releases/download/#{version}/Cryptomator-#{version}-x86_64.AppImage"
    sha256 "333b55f78779c8ce93bace15987d546d46d05f4543b90f1b6afdbadf348921d1"

    desc "Multi-platform client-side cloud file encryption tool"
    homepage "https://cryptomator.org/"

    def install
        prefix.install Dir["*"]
        chmod(0755, "#{prefix}/Cryptomator-#{version}-x86_64.AppImage")
        bin.install_symlink("#{prefix}/Cryptomator-#{version}-x86_64.AppImage" => "Cryptomator")
    end

    def caveats; <<~EOS
        Executable is linked as "marktext".
        EOS
    end
end
