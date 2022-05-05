class Copyq < Formula
   
    version "6.1.0"

    url "https://github.com/hluk/CopyQ/releases/download/v#{version}/copyq_#{version}_Debian_11-1_amd64.deb"
    sha256 "a60cfd735a34ee95ea1f541dc9f3132070a0722a236368bc001e89efa0eb7fab"

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
