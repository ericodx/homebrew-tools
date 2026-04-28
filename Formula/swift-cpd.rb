class SwiftCpd < Formula
  desc "Detect and eliminate duplicated logic in Swift and Objective-C/C codebases to improve maintainability and code quality"
  homepage "https://github.com/ericodx/swift-cpd"
  url "https://github.com/ericodx/swift-cpd/releases/download/v1.4.0/swift-cpd-v1.4.0-macos.tar.gz"
  sha256 "5375c884aadef58673b2c74279ad0c78508bb2f09f342c416379b91c371dccd7"
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
