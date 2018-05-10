class Taskell < Formula
  desc "Command-line kanban board/task manager written in Haskell"
  homepage "https://twitter.com/taskellcli"
  url "https://github.com/smallhadroncollider/taskell/archive/1.1.0.tar.gz"
  sha256 "77ad4aaeb1121445f2f6f7553d75e0c1fa47734ac3089c4595b8ba1d27b9b126"

  depends_on "haskell-stack" => :build

  def install
    system "stack", "build"
    system "stack", "install", "--local-bin-path=#{bin}"
  end

  bottle do
    root_url "https://files.smallhadroncollider.com/taskell"
    cellar :any_skip_relocation
    sha256 "23bb58449d4ea724a6cc47a1f95b8005c834c219fa0263de437b89008fe1978d" => :high_sierra
    sha256 "ae70c2ed208ae3d2143e628b23fe886a3801d029716ee51f38e19ea1455db2bf" => :sierra
  end

  test do
    system "#{bin}/taskell", "-v"
  end
end
