class MathpixSnippingTool < Formula
   
    version "03.00.0074"
    
    url "https://download.mathpix.com/linux/Mathpix_Snipping_Tool-x86_64.v#{version}.AppImage"
    sha256 "6e333bcd1e8ae0cd93e1de52bdb966fdd9b8896986acb72f13d23ae100872e5c"

    desc "Scanner app for math and science"
    homepage "https://mathpix.com/"

    def install
        prefix.install Dir["*"]
        chmod(0755, "#{prefix}/Mathpix_Snipping_Tool-x86_64.v#{version}.AppImage")
        bin.install_symlink("#{prefix}/Mathpix_Snipping_Tool-x86_64.v#{version}.AppImage" => "Mathpix Snipping Tool")
    end

    def caveats; <<~EOS
        Executable is linked as "Mathpix_Snipping_Tool".
        EOS
    end
end
