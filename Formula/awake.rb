class Awake < Formula
  desc "Keep your Mac awake with mic-safe and lid-closed modes"
  homepage "https://github.com/dancumberland/awake"
  url "https://github.com/dancumberland/awake/archive/refs/tags/v2.0.0.tar.gz"
  sha256 "9ce3f273bc9656c3b35248285e65c99d1d8de81fd81b5f0f0a6e61e0e2d29715"
  license "MIT"

  def install
    bin.install "bin/awake"
  end

  test do
    assert_match "awake #{version}", shell_output("#{bin}/awake --version")
  end
end
