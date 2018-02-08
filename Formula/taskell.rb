class Taskell < Formula
  desc "A command line kanban board/task manager written in Haskell"
  homepage ""
  url "https://github.com/smallhadroncollider/taskell/archive/0.10.0.tar.gz"
  sha256 "77017dd3d088c0019f271928d0d18fa8f092ccd2af06060f6f295733e3a44859"

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
