class BraveBrowser < Formula
    desc "Next generation Brave browser for macOS, Windows, Linux, and eventually Android, based on Chromium."
    homepage "https://github.com/brave/brave-browser"
    version "1.38.109"

    url "https://github.com/brave/brave-browser/releases/download/v#{version}/brave-browser-#{version}-linux-amd64.zip"
    sha256 "9120b7eda8f8b986035d98ec782810b32ffc60e6aea3b2232795721a43731a36"

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/brave" => "brave")
    end

    def caveats; <<~EOS
        Executable is linked as "brave".
        EOS
    end
end
