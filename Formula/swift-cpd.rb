class SwiftCpd < Formula
  desc "Detect duplicated logic in Swift and Objective-C/C codebases"
  homepage "https://github.com/ericodx/swift-cpd"
  url "https://github.com/ericodx/swift-cpd/releases/download/v1.5.1/swift-cpd-v1.5.1-macos.tar.gz"
  sha256 "f6ef99db5461cbd6eb30e7439fd5448f0c6f711437dd52fa2b5f08525ddeb44c"
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
