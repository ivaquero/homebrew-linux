class Firefox < Formula
    
    version "99.0.1"

    url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/linux-x86_64/en-US/firefox-#{version}.tar.bz2"
    sha256 "7bc57f06fc9c52e16815f1a4208c33bc5819423c68da441d001f7c2200591bcd"

    desc "The 100% fresh, free-range, ethical browser, with more speed, privacy and freedom. This is the stable version, in en-US."
    homepage "https://www.mozilla.org/en-US/firefox/all/"
    
    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/firefox" => "firefox-browser")
    end

    def caveats; <<~EOS
        Executable is linked as "firefox-browser".
        For more usage information, see "firefox-browser --help".
        EOS
    end
end
