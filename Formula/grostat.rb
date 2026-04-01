class Grostat < Formula
  desc "Growatt inverter data collector — full telemetry to SQLite"
  homepage "https://github.com/zalun/grostat"
  url "https://github.com/zalun/grostat/releases/download/v0.7.0/grostat-0.7.0-arm64-macos.tar.gz"
  sha256 "0fbfe550f5e259a820d6da6f274e0c449e1e5333e48d2eea4a78771ccca1a0e1"
  version "0.7.0"
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
