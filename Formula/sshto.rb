class Sshto < Formula
  desc "SSH terminal menu with configurable groups and mouse support"
  homepage "https://github.com/thisishugow/sshto"
  url "https://github.com/thisishugow/sshto/releases/download/v0.1.0/sshto-0.1.0.tar.gz"
  version "0.1.0"
  sha256 "8d0a37f0d6abb0bee0df674f61bbbf1e463d49b0b861f5f3bdfb1ea1a23b9798"
  license "MIT"

  depends_on :macos

  def install
    bin.install "sshto"
    pkgshare.install "examples/config"
    doc.install "README.md", "PACKAGING.md", "CHANGELOG.md", "CONTRIBUTING.md", "assets"
    prefix.install "LICENSE"
  end

  test do
    assert_equal "sshto #{version}\n", shell_output("#{bin}/sshto --version")
    assert_match "SSHTO_CONFIG", shell_output("#{bin}/sshto --help")
  end
end
