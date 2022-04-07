class VisualStudioCode < Formula
    desc "Open-source code editor"
    homepage "https://code.visualstudio.com"
    version "1.66.0"

    url "https://github.com/microsoft/vscode/archive/refs/tags/#{version}.tar.gz"
    sha256 "1c93918ebd00b8e9fc0d8fea13cbe2947f5b83d2d8f5c8d1b00bde885bb925d7"

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/code")
    end

    def caveats; <<~EOS
        Executable is linked as "code".
        EOS
    end
end
