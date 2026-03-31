class Grostat < Formula
  desc "Growatt inverter data collector — full telemetry to SQLite"
  homepage "https://github.com/zalun/grostat"
  url "https://github.com/zalun/grostat/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "5067d0d237d24049766f53541be369d5a217e9aeae7139415fdcfdb46153dc10"
  license "MIT"

  depends_on xcode: ["14.0", :build]
  depends_on :macos

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    bin.install ".build/release/grostat"
  end

  test do
    assert_match "grostat", shell_output("#{bin}/grostat --help")
  end
end
