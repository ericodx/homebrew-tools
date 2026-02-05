class SwiftMemberLineup < Formula
  desc "Reorder Swift type members without rewriting code"
  homepage "https://github.com/ericodx/swift-member-lineup"
  url "https://github.com/ericodx/swift-member-lineup/releases/download/v1.2.0/swift-member-lineup-v1.2.0-macos.tar.gz"
  sha256 "7963480732fccbce94399a13ec1a0876e107a04d49c736c7dd527906f26a2470"
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
