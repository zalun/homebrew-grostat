class Grostat < Formula
  include Language::Python::Virtualenv

  desc "Growatt inverter data collector — full telemetry to SQLite"
  homepage "https://github.com/zalun/grostat"
  url "https://github.com/zalun/grostat/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "0b7950b6def5b287f1d47fcaedf4845b987e7cf3d4241eebdf092f5f91b7b42c"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "grostat", shell_output("#{bin}/grostat --help")
  end
end
