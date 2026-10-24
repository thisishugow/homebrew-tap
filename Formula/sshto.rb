class Sshto < Formula
  desc "SSH terminal menu with configurable groups and mouse support"
  homepage "https://github.com/thisishugow/sshto"
  url "https://github.com/thisishugow/sshto/releases/download/v0.2.0/sshto-0.2.0.tar.gz"
  version "0.2.0"
  sha256 "0a79eaf38b1a1a85d79a18234c10a330853c108d555498ac47e4734be7cb4a85"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    pkgshare.install "examples/config"
    doc.install "README.md", "PACKAGING.md", "CHANGELOG.md", "CONTRIBUTING.md", "assets"
    prefix.install "LICENSE"
  end

  test do
    assert_equal "sshto #{version}\n", shell_output("#{bin}/sshto --version")
    assert_match "SSHTO_CONFIG", shell_output("#{bin}/sshto --help")
  end
end
