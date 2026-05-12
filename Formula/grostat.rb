class Grostat < Formula
  desc "Growatt inverter data collector — full telemetry to SQLite"
  homepage "https://github.com/zalun/grostat"
  url "https://github.com/zalun/grostat/releases/download/v0.10.1/grostat-0.10.1-arm64-macos.tar.gz"
  sha256 "0e822a7617f394cf6df12e129ca4e6086ab0c1e1c0a226521ac43e39566413eb"
  version "0.10.1"
  license "MIT"

  def install
    bin.install "grostat"
    prefix.install "GrostatBar.app"
  end

  def caveats
    <<~EOS
      Run 'grostat schedule' to enable data collection, install the menu bar app, and autostart.
      Run 'grostat unschedule' to stop everything.
    EOS
  end

  test do
    assert_match "grostat", shell_output("#{bin}/grostat --help")
  end
end
