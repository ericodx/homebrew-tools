class SwiftMemberLineUp < Formula
  desc "Reorder Swift type members without rewriting code."
  homepage "https://github.com/ericodx/swift-member-lineup"
  url "https://github.com/ericodx/swift-member-lineup/releases/download/v0.0.1/swift-member-lineup-v0.0.1-macos.tar.gz"
  sha256 "REPLACE_ME"
  version "0.0.1"
  license "BSD-3-Clause"

  depends_on :macos

  def install
    bin.install "SwiftMemberLineUp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/SwiftMemberLineUp --version")
  end

  livecheck do
    url :stable
    strategy :github_latest
  end
end
