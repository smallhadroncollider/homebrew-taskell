class Taskell < Formula
  desc "Command-line kanban board/task manager written in Haskell"
  homepage "https://taskell.app"
  url "https://github.com/smallhadroncollider/taskell/archive/1.2.0.tar.gz"
  sha256 "cdde3d14c32332fb8002e67a6f9b6b92fd2878d6e1c23d05e16466bdaee53e90"

  depends_on "haskell-stack" => :build

  def install
    system "stack", "build"
    system "stack", "install", "--local-bin-path=#{bin}"
  end

  bottle do
    root_url "https://taskell.app/bottles"
    cellar :any_skip_relocation
    sha256 "3164d83a46d8f72879bcfb942ae2d67cb3510819c911d7338e913045ade257af" => :high_sierra
  end

  test do
    system "#{bin}/taskell", "-v"
  end
end
