class Grostat < Formula
  include Language::Python::Virtualenv

  desc "Growatt inverter data collector — full telemetry to SQLite"
  homepage "https://github.com/zalun/grostat"
  url "https://github.com/zalun/grostat/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "26835894ce7a1838d93f0e7e5adfe57c5c0aaab54d0020f73bfc47e8fb67e43b"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "grostat", shell_output("#{bin}/grostat --help")
  end
end
