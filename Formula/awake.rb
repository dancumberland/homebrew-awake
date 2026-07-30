class Awake < Formula
  desc "Keep your Mac awake — even with the lid closed"
  homepage "https://github.com/dancumberland/awake"
  url "https://github.com/dancumberland/awake/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "3c4c92ab497446ee42553972933e4fbd59b8064a01e3569fb8477de717309dce"
  license "MIT"

  def install
    bin.install "bin/awake"
  end

  test do
    assert_match "awake #{version}", shell_output("#{bin}/awake --version")
  end
end
