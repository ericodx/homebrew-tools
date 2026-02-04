class SwiftMemberLineup < Formula
  desc "Reorder Swift type members without rewriting code"
  homepage "https://github.com/ericodx/swift-member-lineup"
  url "https://github.com/ericodx/swift-member-lineup/releases/download/v1.0.0/swift-member-lineup-v1.0.0-macos.tar.gz"
  sha256 "8ecb2aa326272b5c909f8fb77bbfb7c551e8525b00e6872cc304bf2665026c0f"
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
