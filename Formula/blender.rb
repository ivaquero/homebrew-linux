class Blender < Formula
    desc "free and open source 3D creation suite."
    homepage "https://www.blender.org"
    version "3.1.2"

    url "https://download.blender.org/release/Blender3.1/blender-#{version}-linux-x64.tar.xz"
    sha256 "9120b7eda8f8b986035d98ec782810b32ffc60e6aea3b2232795721a43731a36"

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/blender")
    end

    def caveats; <<~EOS
        Executable is linked as "blender".
        EOS
    end
end
