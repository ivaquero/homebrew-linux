class JuliaLinux < Formula
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  
  version "1.5.0"

  option "with-cn-mirror", "Download from https://mirrors.bfsu.edu.cn, use this option if you're in mainland China for a faster downloading speed."

  if build.with? "cn-mirror"
      url "https://mirrors.bfsu.edu.cn/julia-releases/bin/linux/x64/1.7/julia-1.5.0-linux-x86_64.tar.gz"
  else
      url "https://julialang-s3.julialang.org/bin/linux/x64/1.7/julia-1.5.0-linux-x86_64.tar.gz"
  end

    sha256 "be7af676f8474afce098861275d28a0eb8a4ece3f83a11027e3554dcdecddb91"

  desc "The Julia programming language"
  homepage "https://julialang.org"

  def install
    libexec.install Dir["*"]
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

end
