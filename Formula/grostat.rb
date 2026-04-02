class Grostat < Formula
  desc "Growatt inverter data collector — full telemetry to SQLite"
  homepage "https://github.com/zalun/grostat"
  url "https://github.com/zalun/grostat/releases/download/v0.8.0/grostat-0.8.0-arm64-macos.tar.gz"
  sha256 "27a41328c4494b9c4113730fd4617680482d60f08e635d368495b99abe40b9e9"
  version "0.8.0"
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
