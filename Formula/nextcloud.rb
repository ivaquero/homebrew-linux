class Nextcloud < Formula
    
    version "3.4.4"

    url "https://github.com/nextcloud/desktop/releases/download/v#{version}/Nextcloud-#{version}-x86_64.AppImage"
    sha256 "cc5d219d7a815e744b8371a2641256c29908a163bb2fef858252a536054a5a4f"
  
    desc "A safe home for all your data"
    homepage "https://nextcloud.com"
  
    def install
      prefix.install Dir["*"]
      chmod(0755, "#{prefix}/Nextcloud-#{version}-x86_64.AppImage")
      bin.install_symlink("#{prefix}/Nextcloud-#{version}-x86_64.AppImage" => "nextcloud")
    end
  
    def caveats; <<~EOS
        Executable is linked as "nextcloud".
        EOS
    end
end
