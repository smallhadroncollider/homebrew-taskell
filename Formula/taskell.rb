class Taskell < Formula
  desc "A command line task manager written in Haskell"
  homepage "https://github.com/smallhadroncollider/taskell"
  url "https://github.com/smallhadroncollider/taskell/archive/0.9.0.tar.gz"
  sha256 "397bb8a466943b1934292d7cb50c3acf8e387ff0237c07294504c53b9d16e2dc"

  depends_on "stack" => :build

  bottle do
    root_url "https://files.smallhadroncollider.com/taskell"
    cellar :any_skip_relocation
    # sha256 "2c7a10ebcda4b3dcbae7dd8eda40ea611b5ad45bfabb6c017573723098b25413" => :sierra
    # sha256 "80013d21461fd2dc80555ff5fd3a5f8b152078b88e7ea3fd1e697eac187ce879" => :high_sierra
  end

  def install
    system "stack", "build"
    system "stack", "install", "--local-bin-path=#{bin}"
  end
end
