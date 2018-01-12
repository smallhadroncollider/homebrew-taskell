class Taskell < Formula
  desc "A command line task manager written in Haskell"
  homepage "https://github.com/smallhadroncollider/taskell"
  url "https://github.com/smallhadroncollider/taskell/archive/0.9.1.tar.gz"
  sha256 "a3d1e0affec6abb3d953136c390387d79259585645474dca3627d61a9d2f5787"

  depends_on "stack" => :build

  bottle do
    root_url "https://files.smallhadroncollider.com/taskell"
    cellar :any_skip_relocation
    # sha256 "e567deeb6f6ffe8437ffd3645d9080b112f04536678dccdee650ec70a71c116a" => :sierra
    # sha256 "fd6c77d1f3ce7b935a9392dee4364cfcf452d11586746d6f6354332d9466e4fe" => :high_sierra
  end

  def install
    system "stack", "build"
    system "stack", "install", "--local-bin-path=#{bin}"
  end
end
