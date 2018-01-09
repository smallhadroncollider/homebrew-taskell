class Taskell < Formula
  desc "A command line task manager written in Haskell"
  homepage "https://github.com/smallhadroncollider/taskell"
  url "https://github.com/smallhadroncollider/taskell/archive/0.8.1.tar.gz"
  sha256 "31d89252341af7f34affba2421bf8ed471472e29aa33e57d18dd164d7b214fc3"

  depends_on "stack" => :build

  bottle do
    root_url "https://files.smallhadroncollider.com/taskell"
    cellar :any_skip_relocation
    sha256 "2c7a10ebcda4b3dcbae7dd8eda40ea611b5ad45bfabb6c017573723098b25413" => :sierra
    sha256 "80013d21461fd2dc80555ff5fd3a5f8b152078b88e7ea3fd1e697eac187ce879" => :high_sierra
  end

  def install
    system "stack", "build"
    system "stack", "install", "--local-bin-path=#{bin}"
  end
end
