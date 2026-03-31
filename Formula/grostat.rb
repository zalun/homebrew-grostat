class Grostat < Formula
  desc "Growatt inverter data collector — full telemetry to SQLite"
  homepage "https://github.com/zalun/grostat"
  url "https://github.com/zalun/grostat/releases/download/v0.5.2/grostat-0.5.2-arm64-macos.tar.gz"
  sha256 "b4dfdba7d1e0b0815416eaf761238a1e32262bad2a033852b0d1b5dda651f77e"
  version "0.5.2"
  license "MIT"

  def install
    bin.install "grostat"
  end

  test do
    assert_match "grostat", shell_output("#{bin}/grostat --help")
  end
end
