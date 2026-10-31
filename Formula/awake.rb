class Awake < Formula
  desc "Keep your Mac awake with optional idle-lock and lid-close prevention"
  homepage "https://github.com/dancumberland/awake"
  url "https://github.com/dancumberland/awake/archive/refs/tags/v4.0.0.tar.gz"
  sha256 "6fd54621198a5cc87dab75f18391384e11de6356c491b479520b96e49be890c7"
  license "MIT"

  def install
    bin.install "bin/awake"
  end

  test do
    assert_match "awake #{version}", shell_output("#{bin}/awake --version")
  end
end
