require "language/haskell"

class Taskell < Formula
  include Language::Haskell::Cabal

  desc "Command-line kanban board/task manager written in Haskell"
  homepage "https://taskell.app"
  url "https://github.com/smallhadroncollider/taskell/archive/1.2.1.tar.gz"
  sha256 "6ace0f7465f896f7f8421263458360823354a32e120b6876e6ba4511ffb31ed4"

  depends_on "ghc@8.2" => :build
  depends_on "cabal-install" => :build

  def install
    cabal_install "hpack"
    system "./.cabal-sandbox/bin/hpack"
    install_cabal_package
  end

  bottle do
    root_url "https://taskell.app/bottles"
    cellar :any_skip_relocation
  end

  test do
    system "#{bin}/taskell", "-v"
  end
end
