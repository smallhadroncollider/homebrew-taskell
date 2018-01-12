class Taskell < Formula
  desc "A command line task manager written in Haskell"
  homepage "https://github.com/smallhadroncollider/taskell"
  url "https://github.com/smallhadroncollider/taskell/archive/0.9.1.tar.gz"
  sha256 "a3d1e0affec6abb3d953136c390387d79259585645474dca3627d61a9d2f5787"

  depends_on "stack" => :build

  bottle do
    root_url "https://files.smallhadroncollider.com/taskell"
    cellar :any_skip_relocation
    sha256 "71553e7e7cb5938314b245f35b13ab5d84ac7d4e35fdd164b7539a27f6ab0175" => :high_sierra
  end

  def install
    system "stack", "build"
    system "stack", "install", "--local-bin-path=#{bin}"
  end
end
