class Powershell < Formula
    arch = Hardware::CPU.intel? ? "x64" : "arm64"

    version "7.2.1"

    if Hardware::CPU.arm?
        sha256 "f0d6c9c36d69e1466e5a9412085ef52cafd10b73f862d29479b806279a2975f4"
    else
        sha256 "337d9864799ad09b46d261071b9f835f69f078814409bc2681f4cc2857b6bda5"
    end

    option "with-cn-mirror", "Download from China mainland mirror."
    
    if build.with? "cn-mirror"
        url "https://s3.jcloud.sjtu.edu.cn/899a892efef34b1b944a19981040f55b-oss01/github-release/PowerShell/PowerShell/releases/download/v#{version}/powershell-#{version}-linux-#{arm64}.tar.gz"
    else
        url "https://github.com/PowerShell/PowerShell/releases/download/v#{version}/powershell-#{version}-linux-#{arch}.tar.gz"
    end

    desc "PowerShell for every system"
    homepage "https://github.com/PowerShell/PowerShell"
   
    def install
        libexec.install Dir["*"]
        chmod(0755, "#{libexec}/pwsh")
        bin.install_symlink("#{libexec}/pwsh" => "pwsh")
    end

    def caveats; <<~EOS
        Executable is linked as "pwsh".
        EOS
    end
end
