class Awake < Formula
  desc "Keep your Mac awake — even with the lid closed"
  homepage "https://github.com/dancumberland/awake"
  url "https://github.com/dancumberland/awake/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "69a573d3947ddea35427a5bd99c0619c0e1516a9f18a4410256bbd576dcd3181"
  license "MIT"

  def install
    bin.install "bin/awake"
  end

  test do
    assert_match "awake #{version}", shell_output("#{bin}/awake --version")
  end
end
