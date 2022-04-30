class Vscodium < Formula
    arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

    version "1.66.2"

    if Hardware::CPU.intel?
        sha256 "f682b11a39c9e65949a297fdd3d9fef6b472d7084f47eb5813cb7814468fe6c4"
    else
        sha256 "41d449cb64a65f7eeee4bac9190410d77f1a56540633c5b769276c617174518e"
    end
    
    url "https://github.com/VSCodium/vscodium/releases/download/#{version}/VSCodium-linux-#{arch}-#{version}.tar.gz"

    desc "Binary releases of VS Code without MS branding/telemetry/licensing."
    homepage "https://github.com/VSCodium/vscodium"

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/vscodium")
        bin.install_symlink("#{libexec}/bin/vscodium" => "vsc")
    end

    def caveats; <<~EOS
        Executable is linked as "vscodium" and "vsc".
        EOS
    end
end
