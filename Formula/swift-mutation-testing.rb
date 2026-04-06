class SwiftMutationTesting < Formula
  desc "Find untested behavior in Swift codebases"
  homepage "https://github.com/ericodx/swift-mutation-testing"
  url "https://github.com/ericodx/swift-mutation-testing/releases/download/v1.1.0/swift-mutation-testing-v1.1.0-macos.tar.gz"
  sha256 "92476dbe827b54a217f6bbf8be39b37191b24a61826da5c0b5c51336419cb2bf"
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
