class DockerComposeLinux < Formula
    arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

    version "2.5.0"

    if Hardware::CPU.intel?
        sha256 "6296d17268c77a7159f57f04ed26dd2989f909c58cca4d44d1865f28bd27dd67"
    else
        sha256 "b9b722ab0c5ac6099092c43a04426e84bd9b857e646a1f7fe987fb09efdeffec"
    end

    url "https://github.com/docker/compose/releases/download/v#{version}/docker-compose-linux-#{arch}"
    desc "Isolated development environments using Docker."
    homepage "https://github.com/docker/compose"

    conflicts_with "docker-compose"

    def install
        libexec.install Dir["*"]
        mv("#{libexec}/docker-compose-linux-#{arch}", "#{libexec}/docker-compose")
        chmod(0755, "#{libexec}/docker-compose")
        bin.install_symlink("#{libexec}/docker-compose")
    end

    def caveats; <<~EOS
        Executable is linked as "docker-compose".
        EOS
    end
end

