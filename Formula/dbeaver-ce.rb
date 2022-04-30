class DbeaverCe < Formula
    arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

    version "22.0.3"

    if Hardware::CPU.intel?
        sha256 "381ef5f2c317dd7e000f7e79c185b60576f653e32b1db1301d0b272ee721ade3"
    else
        sha256 "b9b722ab0c5ac6099092c43a04426e84bd9b857e646a1f7fe987fb09efdeffec"
    end
    
    url "https://github.com/dbeaver/dbeaver/releases/download/#{version}/dbeaver-ce-#{version}-linux.gtk.#{arch}-nojdk.tar.gz"
    desc "Free universal database tool and SQL client."
    homepage "https://github.com/dbeaver/dbeaver"

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/dbeaver" => "dbeaverc")
    end

    def caveats; <<~EOS
        Executable linked as "dbeaverc".
        EOS
    end
end
