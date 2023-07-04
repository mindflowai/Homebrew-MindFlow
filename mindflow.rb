class Mindflow < Formula
  include Language::Python::Virtualenv

  url "https://files.pythonhosted.org/packages/9e/c6/a72c3661fbf0d896a124210eacfd158fb4602b2faa47b52d8e7f7e721a8c/mindflow-0.6.0.tar.gz"
  sha256 "c78f39066b9cd260eb4c36becfdb706609913b7bcc6068c98dea3e219dde9205"
  depends_on "python@3.8"

  def install
    venv = virtualenv_create(libexec, "python3")
    system libexec/"bin/pip", "install", "-r", "requirements.txt"
    venv.pip_install_and_link buildpath
  end
end