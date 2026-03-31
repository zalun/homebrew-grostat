class Grostat < Formula
  include Language::Python::Virtualenv

  desc "Growatt inverter data collector — full telemetry to SQLite"
  homepage "https://github.com/zalun/grostat"
  url "https://github.com/zalun/grostat/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "fbdd8caf2f60153d72067269dd48f7669d4a1cede968ec2a7282b979ca788fbf"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "grostat", shell_output("#{bin}/grostat --help")
  end
end
