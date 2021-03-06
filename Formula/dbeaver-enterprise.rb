class DbeaverEnterprise < Formula
    arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

    version "22.0.0"

    if Hardware::CPU.intel?
        sha256 "3be04dd98fbb17948e90553b9d0d277fca6505cb9c3fdee9e62fd8a930932835"
    else
        sha256 "b9b722ab0c5ac6099092c43a04426e84bd9b857e646a1f7fe987fb09efdeffec"
    end

    url "https://dbeaver.com/files/#{version}/dbeaver-ee-#{version}-linux.gtk.#{arch}-nojdk.tar.gz"
    desc "One tool for all databases."
    homepage "https://dbeaver.com"


    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/dbeaver")
    end

    def caveats; <<~EOS
        Executable linked as "dbeaver".
        EOS
    end
end
