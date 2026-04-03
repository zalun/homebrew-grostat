class Grostat < Formula
  desc "Growatt inverter data collector — full telemetry to SQLite"
  homepage "https://github.com/zalun/grostat"
  url "https://github.com/zalun/grostat/releases/download/v0.8.11/grostat-0.8.11-arm64-macos.tar.gz"
  sha256 "7a22f4017ac8c0f91377ebfd3c0380efc88702c8112743dd306aaed4efeec3cb"
  version "0.8.11"
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
