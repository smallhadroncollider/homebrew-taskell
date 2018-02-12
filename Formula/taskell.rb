class Taskell < Formula
  desc "A command line kanban board/task manager written in Haskell"
  homepage "https://github.com/smallhadroncollider/taskell"
  url "https://github.com/smallhadroncollider/taskell/archive/0.10.3.tar.gz"
  sha256 "6ae3428c099f22c94a7a1e3ea799966b6a793f25450fa43a7702990258ffd9a6"

  depends_on "stack" => :build

  bottle do
    root_url "https://files.smallhadroncollider.com/taskell"
    cellar :any_skip_relocation
    sha256 "30d684278b97bb98a7f7d5b9660b128f694bdbc8d63fc75df61cc651c96c8dea" => :high_sierra
  end

  def install
    system "stack", "build"
    system "stack", "install", "--local-bin-path=#{bin}"
  end
end
