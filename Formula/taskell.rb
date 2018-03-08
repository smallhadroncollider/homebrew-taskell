class Taskell < Formula
  desc "A command line kanban board/task manager written in Haskell"
  homepage "https://github.com/smallhadroncollider/taskell"
  url "https://github.com/smallhadroncollider/taskell/archive/1.0.1.tar.gz"
  sha256 "5f899bfab33fc972273b29977772313678339ac245017e6d28ae87cee66e20b7"

  depends_on "stack" => :build

  bottle do
    root_url "https://files.smallhadroncollider.com/taskell"
    cellar :any_skip_relocation
    sha256 "81a9188fc69b27a2f59c0e403d3c93d2450869ff4b0a56ef6ec580cf65c223a6" => :high_sierra
  end

  def install
    system "stack", "build"
    system "stack", "install", "--local-bin-path=#{bin}"
  end
end
