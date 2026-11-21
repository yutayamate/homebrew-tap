class Kcx < Formula
  desc "Read secrets from macOS Keychain and run commands with them"
  homepage "https://github.com/yutayamate/kcx"
  url "https://github.com/yutayamate/kcx.git",
      tag:      "v0.3.1",
      revision: "f0be457fff68de59b15db45ffb53dc7cf8197cff"
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
