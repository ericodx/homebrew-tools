class SwiftCpd < Formula
  desc "Clone & Pattern Detector for Swift and Objective-C/C codebases"
  homepage "https://github.com/ericodx/swift-cpd"
  url "https://github.com/ericodx/swift-cpd/releases/download/v1.3.0/swift-cpd-v1.3.0-macos.tar.gz"
  sha256 "9440b48ab87c7ed938acc5578d32c32ecdcaba59871f7ce15b660bf18adefbb8"
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
