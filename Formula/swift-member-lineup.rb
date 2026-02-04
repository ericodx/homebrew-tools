class SwiftMemberLineup < Formula
  desc "Reorder Swift type members without rewriting code"
  homepage "https://github.com/ericodx/swift-member-lineup"
  url "https://github.com/ericodx/swift-member-lineup/releases/download/v1.1.0/swift-member-lineup-v1.1.0-macos.tar.gz"
  sha256 "sha256:3bec29920d5560d5fdd175edf773c9dfc8f5750c356336f75e88fc01cfd43d5c"
  license "BSD-3-Clause"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :macos

  def install
    bin.install "swift-member-lineup"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/swift-member-lineup --version")
  end
end
