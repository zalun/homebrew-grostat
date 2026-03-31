class Grostat < Formula
  desc "Growatt inverter data collector — full telemetry to SQLite"
  homepage "https://github.com/zalun/grostat"
  url "https://github.com/zalun/grostat/releases/download/v0.4.0/grostat-0.4.0-arm64-macos.tar.gz"
  sha256 "67a4f3876b840931432ed9e60bbbb312a5b2b560c0f2baab9fb91af2fd76d145"
  version "0.4.0"
  license "MIT"

  def install
    bin.install "grostat"
  end

  test do
    assert_match "grostat", shell_output("#{bin}/grostat --help")
  end
end
