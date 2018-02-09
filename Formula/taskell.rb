class Taskell < Formula
  desc "A command line kanban board/task manager written in Haskell"
  homepage ""
  url "https://github.com/smallhadroncollider/taskell/archive/0.10.1.tar.gz"
  sha256 "f50f386ba095234072a7f482e8deccc59269d7f589e04682aa4b1777903d60bc"

  depends_on "stack" => :build

  bottle do
    root_url "https://files.smallhadroncollider.com/taskell"
    cellar :any_skip_relocation
  end

  def install
    system "stack", "build"
    system "stack", "install", "--local-bin-path=#{bin}"
  end
end
