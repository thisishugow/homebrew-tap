class Scpto < Formula
  desc "Dual-pane terminal file transfer over SFTP"
  homepage "https://github.com/thisishugow/scpto"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/thisishugow/scpto/releases/download/v0.1.0/scpto-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "3a03b5b78c8d98db8890feb7a5c1511620ba67f24ef36e48208da796884c2d76"
    end
    on_arm do
      url "https://github.com/thisishugow/scpto/releases/download/v0.1.0/scpto-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "9cfb5617af97ed837d3fbd91d12c4e87df18d25ac724eb07980474e74f78c79f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/thisishugow/scpto/releases/download/v0.1.0/scpto-0.1.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fc017ec1c1a8dcb8fc6c423620b5c68d124dc5548792aa16e7ee4a66e56fb9b6"
    end
    on_arm do
      url "https://github.com/thisishugow/scpto/releases/download/v0.1.0/scpto-0.1.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2eb8af690fd093cff886939e119f4d9193a60882c874044db183ac48a8adf586"
    end
  end

  def install
    bin.install "scpto"
    doc.install "README.md", "README.zh-TW.md", "CHANGELOG.md"
    prefix.install "LICENSE"
  end

  test do
    assert_equal "scpto #{version}\n", shell_output("#{bin}/scpto --version")
    assert_match "SCPTO_CONFIG", shell_output("#{bin}/scpto --help")
  end
end
