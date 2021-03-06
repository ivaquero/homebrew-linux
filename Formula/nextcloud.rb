class Nextcloud < Formula
    
    version "3.4.4"

    url "https://github.com/nextcloud/desktop/releases/download/v#{version}/Nextcloud-#{version}-x86_64.AppImage"
    sha256 "5fce5febe1a85e3875a018bdb9581ed1e3174143eee570aa3e45014645445145"
  
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
