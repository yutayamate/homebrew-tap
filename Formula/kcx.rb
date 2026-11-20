class Kcx < Formula
  desc "Read secrets from macOS Keychain and run commands with them"
  homepage "https://github.com/yutayamate/kcx"
  url "https://github.com/yutayamate/kcx.git",
      tag:      "v0.3.0",
      revision: "1ee366d250bc8ad5e554ed89df06bb25efccc118"
  license "MIT"

  depends_on :macos

  def install
    system "swiftc", "-O", "-framework", "Security", "Sources/kcx/main.swift", "-o", "kcx"
    bin.install "kcx"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/kcx --help")
  end
end
