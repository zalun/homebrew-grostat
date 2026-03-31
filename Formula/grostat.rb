class Grostat < Formula
  desc "Growatt inverter data collector — full telemetry to SQLite"
  homepage "https://github.com/zalun/grostat"
  url "https://github.com/zalun/grostat/releases/download/v0.6.0/grostat-0.6.0-arm64-macos.tar.gz"
  sha256 "f599e8bfc83dc9e71f100b31eff5e31baa4c4ee45a00c8f70ce85d2916e81038"
  version "0.6.0"
  license "MIT"

  def install
    bin.install "grostat"
    prefix.install "GrostatBar.app"
  end

  def post_install
    system "ln", "-sf", "#{prefix}/GrostatBar.app", "/Applications/GrostatBar.app"
  end

  def caveats
    <<~EOS
      GrostatBar.app has been linked to /Applications/.
      Run 'grostat schedule' to enable autostart and data collection.
    EOS
  end

  test do
    assert_match "grostat", shell_output("#{bin}/grostat --help")
  end
end
