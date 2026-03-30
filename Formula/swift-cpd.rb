class SwiftCpd < Formula
  desc "Clone & Pattern Detector for Swift and Objective-C/C codebases"
  homepage "https://github.com/ericodx/swift-cpd"
  url "https://github.com/ericodx/swift-cpd/releases/download/v1.1.2/swift-cpd-v1.1.2-macos.tar.gz"
  sha256 "9cf63e2cb837c324646e93141187388ce9e47545cb97f6cc694d3c1fd747d7c3"
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
