class SwiftMarshal < Formula
  desc "Reorder Swift type members without rewriting code"
  homepage "https://github.com/ericodx/swift-marshal"
  url "https://github.com/ericodx/swift-marshal/releases/download/v1.1.0/swift-marshal-v1.1.0-macos.tar.gz"
  sha256 "6541ea605ccee2dddcbe2cbb27f0da6164121da21dfdc780662de23d1680b744"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :macos

  def install
    bin.install "swift-marshal"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/swift-marshal --version")
  end
end
