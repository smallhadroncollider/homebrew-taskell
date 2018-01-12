class Taskell < Formula
  desc "A command line task manager written in Haskell"
  homepage "https://github.com/smallhadroncollider/taskell"
  url "https://github.com/smallhadroncollider/taskell/archive/0.9.2.tar.gz"
  sha256 "ace2c518763d5b235b7c18b6e616bc103a935b3fdc51be01ecefe67c2dce81d0"

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
