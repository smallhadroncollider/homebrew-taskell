require "language/haskell"

class Taskell < Formula
  include Language::Haskell::Cabal

  desc "Command-line Kanban board/task manager with support for Trello"
  homepage "https://taskell.app"
  url "https://github.com/smallhadroncollider/taskell/archive/1.2.4.tar.gz"
  sha256 "88e060bd6ae4a9f421b762263562bd1b59b408c0ef3b158f2a83970207095052"

  depends_on "ghc" => :build
  depends_on "cabal-install" => :build

  def install
    cabal_sandbox do
      cabal_install "hpack"
      system "./.cabal-sandbox/bin/hpack"
      install_cabal_package "-f", "release"
    end
  end

  bottle do
    root_url "https://taskell.app/bottles"
    cellar :any_skip_relocation
  end

  test do
    system "#{bin}/taskell", "-v"
  end
end
