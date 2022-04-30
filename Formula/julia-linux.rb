class JuliaLinux < Formula
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"
  arch_f = Hardware::CPU.intel? ? "x64" : "aarch64"
  
  version "1.7.2"

  if Hardware::CPU.intel?
    sha256 "a75244724f3b2de0e7249c861fbf64078257c16fb4203be78f1cf4dd5973ba95"
  else
    sha256 "b9b722ab0c5ac6099092c43a04426e84bd9b857e646a1f7fe987fb09efdeffec"
  end

  option "with-cn-mirror", "Download from https://mirrors.bfsu.edu.cn, use this option if you're in mainland China for a faster downloading speed."

  if build.with? "cn-mirror"
      url "https://mirrors.bfsu.edu.cn/julia-releases/bin/linux/#{arch_f}/1.7/julia-#{version}-linux-#{arch}.tar.gz"
  else
      url "https://julialang-s3.julialang.org/bin/linux/#{arch_f}/1.7/julia-#{version}-linux-#{arch}.tar.gz"
  end

  desc "The Julia programming language"
  homepage "https://julialang.org"

  def install
    libexec.install Dir["*"]
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
end
