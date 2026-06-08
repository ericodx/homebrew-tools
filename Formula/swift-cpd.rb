class SwiftCpd < Formula
  desc "Detect and eliminate duplicated logic in Swift and Objective-C/C codebases to improve maintainability and code quality"
  homepage "https://github.com/ericodx/swift-cpd"
  url "https://github.com/ericodx/swift-cpd/releases/download/v1.5.0/swift-cpd-v1.5.0-macos.tar.gz"
  sha256 "9ee2416b0e3b62b9a2d766b9327c3ad934cb6b1a939f048ed22d202670f57bb2"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :macos

  def install
    bin.install "swift-cpd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/swift-cpd --version")
  end
end
