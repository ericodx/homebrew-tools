class SwiftMarshal < Formula
  desc "Reorder Swift type members without rewriting code"
  homepage "https://github.com/ericodx/swift-marshal"
  url "https://github.com/ericodx/swift-marshal/releases/download/v1.0.0/swift-marshal-v1.0.0-macos.tar.gz"
  sha256 "a638fdf8e6494c0bcd266e2050f9833bae645d00ac400c9e5e6b0edbeec9897b"
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
