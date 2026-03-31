class Grostat < Formula
  desc "Growatt inverter data collector — full telemetry to SQLite"
  homepage "https://github.com/zalun/grostat"
  url "https://github.com/zalun/grostat/releases/download/v0.4.0/grostat-0.4.0-arm64-macos.tar.gz"
  sha256 "06f3e20cbeedcf9515d71462dcf340377bce2bcbe17dae5cddbe9db24b19017d"
  version "0.4.0"
  license "MIT"

  def install
    bin.install "grostat"
  end

  test do
    assert_match "grostat", shell_output("#{bin}/grostat --help")
  end
end
