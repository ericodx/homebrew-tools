class SwiftMutationTesting < Formula
  desc "Find untested behavior in Swift codebases"
  homepage "https://github.com/ericodx/swift-mutation-testing"
  url "https://github.com/ericodx/swift-mutation-testing/releases/download/v1.6.4/swift-mutation-testing-v1.6.4-macos.tar.gz"
  sha256 "c8a0690598766bba4a5f4616f8f99b8909ddf884bbcdb41c83ace62451cd8303"
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
