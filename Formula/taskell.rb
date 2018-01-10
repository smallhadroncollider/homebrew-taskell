class Taskell < Formula
  desc "A command line task manager written in Haskell"
  homepage "https://github.com/smallhadroncollider/taskell"
  url "https://github.com/smallhadroncollider/taskell/archive/0.9.0.tar.gz"
  sha256 "397bb8a466943b1934292d7cb50c3acf8e387ff0237c07294504c53b9d16e2dc"

  depends_on "stack" => :build

  bottle do
    root_url "https://files.smallhadroncollider.com/taskell"
    cellar :any_skip_relocation
    sha256 "e567deeb6f6ffe8437ffd3645d9080b112f04536678dccdee650ec70a71c116a" => :sierra
    sha256 "fd6c77d1f3ce7b935a9392dee4364cfcf452d11586746d6f6354332d9466e4fe" => :high_sierra
  end

  def install
    system "stack", "build"
    system "stack", "install", "--local-bin-path=#{bin}"
  end
end
