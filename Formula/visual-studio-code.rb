class Visual-Studio-Code < Formula
    desc "Open-source code editor"
    homepage "https://code.visualstudio.com"
    version "1.66.0"

    url "https://vscode-update.azurewebsites.net/#{version}/linux-x64/stable"
    sha256 "97bc49f68a35d8f22fe2706a09ba62e90f2995f4c4f23beb7091e8f9a7cdeb0d"

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/code")
    end

    def caveats; <<~EOS
        Executable is linked as "code".
        EOS
    end
end
