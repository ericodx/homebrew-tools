class SwiftCpd < Formula
  desc "Clone & Pattern Detector for Swift and Objective-C/C codebases"
  homepage "https://github.com/ericodx/swift-cpd"
  url "https://github.com/ericodx/swift-cpd/releases/download/v1.1.1/swift-cpd-v1.1.1-macos.tar.gz"
  sha256 "2e037db0d05da34b1dd00f3a4bf378eaf7c58ce706eee163c3734a9bbfad3182"
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
