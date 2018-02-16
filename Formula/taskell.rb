class Taskell < Formula
  desc "A command line kanban board/task manager written in Haskell"
  homepage "https://github.com/smallhadroncollider/taskell"
  url "https://github.com/smallhadroncollider/taskell/archive/0.11.0.tar.gz"
  sha256 "9033d4f8cfa7b4856694f0cf7f73a168188b462b8c185e88396a188edfc8dc9a"

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
