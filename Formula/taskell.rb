class Taskell < Formula
  desc "A command line kanban board/task manager written in Haskell"
  homepage "https://github.com/smallhadroncollider/taskell"
  url "https://github.com/smallhadroncollider/taskell/archive/0.11.2.tar.gz"
  sha256 "40301ab19cb22284a6be8b9862a854d91d1b1106a6d6df4725dfa1ce85e3d221"

  depends_on "stack" => :build

  bottle do
    root_url "https://files.smallhadroncollider.com/taskell"
    cellar :any_skip_relocation
    sha256 "97942e29f4bbf2cdd45b7e1019ed314a6dea7854c14237057a14ae9342af0e90" => :high_sierra
  end

  def install
    system "stack", "build"
    system "stack", "install", "--local-bin-path=#{bin}"
  end
end
