class Teamviewer < Formula
    
    version "15.28.8"

    url "https://download.teamviewer.com/download/teamviewer_i386.tar.xz"
    sha256 "c64432844f83d8ee4785257f7edcc2a527de3319b4e111b8b877f0b85945c300"

    desc "Remote support, remote access, and online meeting software that the world relies on."
    homepage "http://www.teamviewer.com/"
    
    def install
        libexec.install Dir["*"]
        (libexec/"teamviewer_brew_exec").write <<~EOS
            #!/usr/bin/env bash
            cd $(brew --prefix teamviewer)/libexec
            ./teamviewer
        EOS
        chmod(0755, "#{libexec}/teamviewer_brew_exec")
        bin.install_symlink("#{libexec}/teamviewer_brew_exec" => "teamviewer")
    end

    def caveats; <<~EOS
        Teamviewer is a 32-bit software, so if you want to use it
        in a 64-bit system, you have to install 32-bit shared libraries
        like dbus based on the linux distro you use otherwise you may eccounter errors like:
            "Cannot open shared object file: No such file or directory"
        EOS
    end
end
