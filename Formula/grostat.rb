class Grostat < Formula
  desc "Growatt inverter data collector — full telemetry to SQLite"
  homepage "https://github.com/zalun/grostat"
  url "https://github.com/zalun/grostat/releases/download/v0.5.0/grostat-0.5.0-arm64-macos.tar.gz"
  sha256 "ed7d6bbfa2de42706576351f196cd692032b2d8abbee21413ea1f6b70cfec099"
  version "0.5.0"
  license "MIT"

  def install
    bin.install "grostat"
  end

  test do
    assert_match "grostat", shell_output("#{bin}/grostat --help")
  end
end
