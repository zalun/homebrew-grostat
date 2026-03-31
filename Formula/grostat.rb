class Grostat < Formula
  include Language::Python::Virtualenv

  desc "Growatt inverter data collector — full telemetry to SQLite"
  homepage "https://github.com/zalun/grostat"
  url "https://github.com/zalun/grostat/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "d64a96517d23a8c8b80c88b8db25613ac4f92e2ffd8400e9839a218b07bcff28"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "grostat", shell_output("#{bin}/grostat --help")
  end
end
