class Marktext < Formula
   
    version "0.17.1"

    url "https://github.com/marktext/marktext/releases/download/v#{version}/marktext-x86_64.AppImage"
    sha256 "a60cfd735a34ee95ea1f541dc9f3132070a0722a236368bc001e89efa0eb7fab"

    desc "Next generation markdown editor, running on platforms of MacOS Windows and Linux."
    homepage "https://github.com/marktext/marktext"

    def install
        prefix.install Dir["*"]
        chmod(0755, "#{prefix}/marktext-#{version}-x86_64.AppImage")
        bin.install_symlink("#{prefix}/marktext-#{version}-x86_64.AppImage" => "marktext")
    end

    def caveats; <<~EOS
        Executable is linked as "marktext".
        EOS
    end
end
