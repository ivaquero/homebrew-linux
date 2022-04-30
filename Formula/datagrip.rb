class Datagrip < Formula
    desc "Your Swiss Army Knife for Databases and SQL."
    homepage "http://www.jetbrains.com/datagrip/"
    version "2022.1.2"
    url "https://download.jetbrains.com/datagrip/datagrip-#{version}.tar.gz"
    sha256 "4b88640b09ce724d5b25cacba82a75eca9c57c6e1b0a01f77e78fdcd7af1a691"

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/datagrip.sh" => "datagrip")
    end

    def caveats; <<~EOS
        Executable is linked as "datagrip".
        EOS
    end
end
