class Grostat < Formula
  desc "Growatt inverter data collector — full telemetry to SQLite"
  homepage "https://github.com/zalun/grostat"
  url "https://github.com/zalun/grostat/releases/download/v0.5.1/grostat-0.5.1-arm64-macos.tar.gz"
  sha256 "418c3d3e98a30f2a74cfcf3f995891892114c517ca97dd7eebb48417333b0f42"
  version "0.5.1"
  license "MIT"

  def install
    bin.install "grostat"
  end

  test do
    assert_match "grostat", shell_output("#{bin}/grostat --help")
  end
end
