class ClashForWindows < Formula
    
    version "0.19.17"

    url "https://github.com/Fndroid/clash_for_windows_pkg/releases/download/#{version}/Clash.for.Windows-#{version}-x64-linux.tar.gz"
    sha256 "d52b76f2e9289b6cb18e88f710d11b5a0e045992636694b7aec6b7168e5150ba"

    desc "A Windows/macOS/Linux GUI based on Clash and Electron"
    homepage "https://github.com/Fndroid/clash_for_windows_pkg"
    
    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/cfw" => "clash-for-windows")
    end

    def caveats; <<~EOS
        Executable is linked as "clash-for-windows".
        EOS
    end
end
