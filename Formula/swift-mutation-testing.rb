class SwiftMutationTesting < Formula
  desc "Find untested behavior in Swift codebases"
  homepage "https://github.com/ericodx/swift-mutation-testing"
  url "https://github.com/ericodx/swift-mutation-testing/releases/download/v1.2.0/swift-mutation-testing-v1.2.0-macos.tar.gz"
  sha256 "373bd0ed4691c3dfdaddd4278f944e20aafc52a48290aae1a8751c1190947511"
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
