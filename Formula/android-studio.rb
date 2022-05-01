class AndroidStudio < Formula
    
    version "4.2.1.0"
    
    url "https://redirector.gvt1.com/edgedl/android/studio/ide-zips/#{version}/android-studio-ide-202.7351085-linux.tar.gz"
    sha256 "66e06233349d07ac0fd53a23accc1bba5146488d0221bdf793557d0441349e1c"

    desc "The official Android IDE."
    homepage "https://developer.android.com/studio/"

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/studio.sh" => "android_studio")
    end

    def caveats; <<~EOS
        Executable is linked as "android_studio".
        EOS
    end
end
