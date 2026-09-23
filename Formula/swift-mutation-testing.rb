class SwiftMutationTesting < Formula
  desc "Find untested behavior in Swift codebases"
  homepage "https://github.com/ericodx/swift-mutation-testing"
  url "https://github.com/ericodx/swift-mutation-testing/releases/download/v1.4.0/swift-mutation-testing-v1.4.0-macos.tar.gz"
  sha256 "d8b077d399e01d42448b3c0d3861ce07e81e07d9a952c1e5d8bb46c0a3124d9f"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :macos

  def install
    bin.install "swift-mutation-testing"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/swift-mutation-testing --version")
  end
end
