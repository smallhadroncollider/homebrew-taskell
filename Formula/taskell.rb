class Taskell < Formula
  desc "A command line kanban board/task manager written in Haskell"
  homepage "https://github.com/smallhadroncollider/taskell"
  url "https://github.com/smallhadroncollider/taskell/archive/1.0.0.tar.gz"
  sha256 "ba4a9aef526507a6d1be4301adc9ebd0e385c0f08ea3dc7d28227f25c902305c"

  depends_on "stack" => :build

  bottle do
    root_url "https://files.smallhadroncollider.com/taskell"
    cellar :any_skip_relocation
    sha256 "0fc1975a0845bd523af636a221999d7ae53729e0ca8061bc99a8ade64148f98a" => :high_sierra
    sha256 "d0c1f95f206a7abcd1b6852aea34cd0fccf11d11a3eb8e880bbb1069739e4937" => :sierra
  end

  def install
    system "stack", "build"
    system "stack", "install", "--local-bin-path=#{bin}"
  end
end
