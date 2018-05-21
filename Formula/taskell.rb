class Taskell < Formula
  desc "Command-line kanban board/task manager written in Haskell"
  homepage "https://twitter.com/taskellcli"
  url "https://github.com/smallhadroncollider/taskell/archive/1.2.0.tar.gz"
  sha256 "cdde3d14c32332fb8002e67a6f9b6b92fd2878d6e1c23d05e16466bdaee53e90"

  depends_on "haskell-stack" => :build

  def install
    system "stack", "build"
    system "stack", "install", "--local-bin-path=#{bin}"
  end

  bottle do
    root_url "https://files.smallhadroncollider.com/taskell"
    cellar :any_skip_relocation
  end

  test do
    system "#{bin}/taskell", "-v"
  end
end
