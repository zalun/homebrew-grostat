class Grostat < Formula
  desc "Growatt inverter data collector — full telemetry to SQLite"
  homepage "https://github.com/zalun/grostat"
  url "https://github.com/zalun/grostat/releases/download/v0.8.15/grostat-0.8.15-arm64-macos.tar.gz"
  sha256 "5e6e5d46a376b0729fef38fffa361e9661a77461355e1dafe07a9c03c8a72971"
  version "0.8.15"
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
