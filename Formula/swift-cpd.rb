class SwiftCpd < Formula
  desc "Clone & Pattern Detector for Swift and Objective-C/C codebases"
  homepage "https://github.com/ericodx/swift-cpd"
  url "https://github.com/ericodx/swift-cpd/releases/download/v1.2.0/swift-cpd-v1.2.0-macos.tar.gz"
  sha256 "cb29b6b91662fff700962c16a519f7f7d037609df0d28bf74a8607b05f5a0a4d"
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
