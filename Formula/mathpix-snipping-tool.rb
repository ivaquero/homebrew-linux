class MathpixSnippingTool < Formula
   
    version "03.00.0074"
    
    url "https://download.mathpix.com/linux/Mathpix_Snipping_Tool-x86_64.v#{version}.AppImage"
    sha256 "80156ed6cedcf474bea62837d15d0d60b59218f8eaa3bfed823dc5ad6471dfe2"

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
