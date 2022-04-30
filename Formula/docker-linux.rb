class DockerLinux < Formula
    arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

    version "20.10.9"

    if Hardware::CPU.intel?
        sha256 "caf74e54b58c0b38bb4d96c8f87665f29b684371c9a325562a3904b8c389995e"
    else
        sha256 "b9b722ab0c5ac6099092c43a04426e84bd9b857e646a1f7fe987fb09efdeffec"
    end

    option "with-cn-mirror", "Download from https://mirrors.aliyun.com/docker-ce, use this option if you're in mainland China for a faster downloading speed."

    if build.with? "cn-mirror"
        url "https://mirrors.aliyun.com/docker-ce/linux/static/stable/#{arch}/docker-#{version}.tgz"
    else
        url "https://download.docker.com/linux/static/stable/#{arch}/docker-#{version}.tgz"
    end

    desc "Pack, ship and run any application as a lightweight container. This is the community edition."
    homepage "https://download.docker.com/linux/static/stable/x86_64/"

    conflicts_with "docker", :because => "both install `docker` binaries"

    def install
        libexec.install Dir["*"]
        bin.install_symlink Dir["#{libexec}/*"]
    end
end
