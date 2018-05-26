require "language/haskell"

class Taskell < Formula
  include Language::Haskell::Cabal

  desc "Command-line Kanban board/task manager with support for Trello"
  homepage "https://taskell.app"
  url "https://github.com/smallhadroncollider/taskell/archive/1.2.6.tar.gz"
  sha256 "ffd2028ff18b08dba2a890b3e7d76d20a1f78698416d5061274ad062140a5731"

  bottle do
    root_url "https://taskell.app/bottles"
    cellar :any_skip_relocation
  end

  depends_on "cabal-install" => :build
  depends_on "ghc" => :build

  def install
    cabal_sandbox do
      cabal_install "hpack"
      system "./.cabal-sandbox/bin/hpack"
      install_cabal_package
    end
  end

  test do
    system "#{bin}/taskell", "-v"

    input = <<~EOS
      ## To Do

      - A thing
      - Another thing
    EOS

    output = <<~EOS
      test.md
      Lists: 1
      Tasks: 2
    EOS

    (testpath/"test.md").write input
    assert_match output, shell_output("#{bin}/taskell -i test.md")
  end
end
