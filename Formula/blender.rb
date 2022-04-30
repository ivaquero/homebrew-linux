class Blender < Formula
  
    version "3.1.2"

    url "https://download.blender.org/release/Blender3.1/blender-#{version}-linux-x64.tar.xz"
    sha256 "c1d345b25c6f83708b2681d354d70a3e6023c04bb73cc7943366c0c19e542958"

    desc "free and open source 3D creation suite."
    homepage "https://www.blender.org"
    
    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/blender")
    end

    def caveats; <<~EOS
        Executable is linked as "blender".
        EOS
    end
end
