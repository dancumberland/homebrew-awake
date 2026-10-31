class Awake < Formula
  desc "Keep your Mac awake with optional idle-lock and lid-close prevention"
  homepage "https://github.com/dancumberland/awake"
  url "https://github.com/dancumberland/awake/archive/refs/tags/v4.1.0.tar.gz"
  sha256 "6c2afd78b91eb02e8334e4e754f6d81294da62f7cf8f9f8c58b03f3bbbc6177c"
  license "MIT"

  def install
    bin.install "bin/awake"
    libexec.install "libexec/awake-lid-helper", "scripts/setup-lid-helper.sh"
  end

  def caveats
    <<~EOS
      Optional password-free lid setup: awake setup
      This requires one admin authentication and is never run automatically.
      Before uninstalling this package, remove a configured helper with:
        awake uninstall-helper
      Package removal alone does not remove the separate root helper or grant.
    EOS
  end

  test do
    assert_match "awake #{version}", shell_output("#{bin}/awake --version")
    assert_predicate libexec/"awake-lid-helper", :executable?
    assert_predicate libexec/"setup-lid-helper.sh", :executable?
    system "/bin/bash", "-n", libexec/"setup-lid-helper.sh"
  end
end
