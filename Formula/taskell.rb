class Taskell < Formula
  desc "A command line task manager written in Haskell"
  homepage "https://github.com/smallhadroncollider/taskell"
  url "https://github.com/smallhadroncollider/taskell/archive/0.7.0.tar.gz"
  sha256 "5a8256e9bf6e9f1305daadf398021276301552c49277d1f790ebc610814c08d2"

  depends_on "ghc" => :build
  depends_on "cabal-install" => :build
  depends_on "stack" => :build

  bottle do
    root_url "https://files.smallhadroncollider.com/taskell"
    cellar :any_skip_relocation
    sha256 "4188ffd54bf115d83736e62dee7ba32ee9f58321e87cf8ae91a4f6487980a838" => :sierra
    sha256 "6403ef1a746ae554f063094c820bfffd27f9a7952469643df78842f88d2ff011" => :high_sierra
  end

  def install
    system "stack", "build"
    system "stack", "install", "--local-bin-path=#{bin}"
  end
end
