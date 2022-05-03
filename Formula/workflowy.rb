class Workflowy < Formula
   
    version "1.3.7-4016"
    
    url "https://github.com/workflowy/desktop/releases/download/v#{version}/WorkFlowy-x86_64.AppImage"
    sha256 "e37a2788a1238c9cdc12b0b0b024538c959126af1e61677d60813e26407ce1d2"

    desc "Workflowy"
    homepage "https://workflowy.com/hello"

    def install
        prefix.install Dir["*"]
        chmod(0755, "#{prefix}/WorkFlowy-x86_64.AppImage")
        bin.install_symlink("#{prefix}/WorkFlowy-x86_64.AppImage" => "workflowy")
    end

    def caveats; <<~EOS
        Executable is linked as "workflowy".
        EOS
    end
end
