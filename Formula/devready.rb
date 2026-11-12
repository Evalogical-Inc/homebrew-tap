class Devready < Formula
  include Language::Python::Virtualenv

  desc "Local-first, read-only CLI that checks a project's environment requirements"
  homepage "https://devready-ten.vercel.app/"
  url "https://files.pythonhosted.org/packages/66/f6/1d53ea1a53a25d53edd8bfe1adbb3f4006f6614fd2f48ffe4fcceb2f6d07/devready_cli-1.3.0.tar.gz"
  sha256 "da63b335bc71ab59e05be22cef73a6cd132cfbaec20e8d7e0079766f05f6f22e"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/devready --version")
    assert_match "git", shell_output("#{bin}/devready explain git.version")
  end
end
