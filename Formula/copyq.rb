class Copyq < Formula
   
    version "6.1.0"

    url "https://github.com/hluk/CopyQ/releases/download/v#{version}/copyq_#{version}_Debian_11-1_amd64.deb"
    sha256 "8db118077c2f6557437150a0b94f8d3a1175919827e6fde1c61d4ea6358dd398"

    desc "Clipboard manager with advanced features"
    homepage "https://github.com/hluk/CopyQ"

    def install
        prefix.install Dir["*"]
        chmod(0755, "#{prefix}/copyq_#{version}_Debian_11-1_amd64.deb")
        bin.install_symlink("#{prefix}/copyq_#{version}_Debian_11-1_amd64.deb" => "CopyQ")
    end

    def caveats; <<~EOS
        Executable is linked as "CopyQ".
        EOS
    end
end
