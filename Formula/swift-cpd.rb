class SwiftCpd < Formula
  desc "Clone & Pattern Detector for Swift and Objective-C/C codebases"
  homepage "https://github.com/ericodx/swift-cpd"
  url "https://github.com/ericodx/swift-cpd/releases/download/v1.1.0/swift-cpd-v1.1.0-macos.tar.gz"
  sha256 "b54c3046332a941e68ac53142232bcc244ae7138d4d81e98994c063dc735bca9"
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
