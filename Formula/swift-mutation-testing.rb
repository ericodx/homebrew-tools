class SwiftMutationTesting < Formula
  desc "Find untested behavior in Swift codebases"
  homepage "https://github.com/ericodx/swift-mutation-testing"
  url "https://github.com/ericodx/swift-mutation-testing/releases/download/v1.5.1/swift-mutation-testing-v1.5.1-macos.tar.gz"
  sha256 "ccab00485a2bff3552e39e1fb0add5c3068dbaa6a8e0c7bcc644998b56ccddf3"
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
