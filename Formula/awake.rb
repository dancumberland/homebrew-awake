class Awake < Formula
  desc "Keep your Mac awake with the lid closed and restore its mic on reopen"
  homepage "https://github.com/dancumberland/awake"
  url "https://github.com/dancumberland/awake/archive/refs/tags/v3.0.0.tar.gz"
  sha256 "630b9550f2cb2d88cdedeaa046faa827d60fa7f9aab8513af9222a5f5dfc13f0"
  license "MIT"

  def install
    bin.install "bin/awake"
  end

  test do
    assert_match "awake #{version}", shell_output("#{bin}/awake --version")
  end
end
