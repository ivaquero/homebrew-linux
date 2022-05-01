class TorBrowser < Formula
 
  version "11.0.11"

  url "https://www.torproject.org/dist/torbrowser/#{version}/tor-browser-linux64-#{version}_en-US.tar.xz"
  sha256 "6df94735440f608cb80c5b45c777a25a9aeaa5b5f0137dab28fce86d9b14a9b7"

  desc "Modified Firefox with privacy add-ons, encryption & advanced proxy"
  homepage "https://www.torproject.org/projects/torbrowser.html.en"
  
  def install
    libexec.install Dir["*"]
    (libexec/"tor-browser_brew_exec").write <<~EOS
      #!/usr/bin/env bash
      cd #{libexec}
      ./start-tor-browser.desktop "$@"
    EOS
    chmod(0755, "#{libexec}/tor-browser_brew_exec")
    bin.install_symlink("#{libexec}/tor-browser_brew_exec" => "tor-browser")
  end

  def caveats; <<~EOS
    Executable is linked as "tor-browser".
    For more usage information, see "tor-browser --help".
    EOS
  end

  test do
    cd(libexec) do
      assert_equal "Launching './Browser/start-tor-browser --detach --verbose --version'...\nMozilla Firefox 52.5.0\n", shell_output("#{bin}/tor-browser --verbose --version 2>&1")
    end
  end
end
