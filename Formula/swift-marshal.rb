class SwiftMarshal < Formula
  desc "Reorder Swift type members without rewriting code"
  homepage "https://github.com/ericodx/swift-marshal"
  url "https://github.com/ericodx/swift-marshal/releases/download/v1.1.1/swift-marshal-v1.1.1-macos.tar.gz"
  sha256 "285139e9d80f03e4f31f87d6a843893df5f3029356fd2a4bd7e50b1f297f8d7a"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :macos

  def install
    bin.install "swift-marshal"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/swift-marshal --version")
  end
end
