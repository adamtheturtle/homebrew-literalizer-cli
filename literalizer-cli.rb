class LiteralizerCli < Formula
  include Language::Python::Virtualenv

  desc "CLI for literalizer - convert data structures to native language literal syntax"
  homepage "None"
  url "https://files.pythonhosted.org/packages/15/d5/82f8b5ec154f8de82383f4ce4dfe468184377b987a7e2d0c2592eb6c017b/literalizer_cli-2026.3.25.tar.gz"
  sha256 "a2fe827b17f968b44d3c765f20b27209a9de1d5b10045f3a4fbc94e11afff1bf"

  depends_on "python3"

  resource "beartype" do
    url "https://files.pythonhosted.org/packages/c7/94/1009e248bbfbab11397abca7193bea6626806be9a327d399810d523a07cb/beartype-0.22.9.tar.gz"
    sha256 "8f82b54aa723a2848a56008d18875f91c1db02c32ef6a62319a002e3e25a975f"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/3d/fa/656b739db8587d7b5dfa22e22ed02566950fbfbcdc20311993483657a5c0/click-8.3.1.tar.gz"
    sha256 "12ff4785d337a1bb490bb7e9c2b1ee5da3112e94a8622f26a6c77f5d2fc6842a"
  end

  resource "literalizer" do
    url "https://files.pythonhosted.org/packages/a0/2c/a67c7ae4d27755863ff4de6dd910c08858ca548fa9db48fd5218efb7c077/literalizer-2026.3.29.tar.gz"
    sha256 "292d86ba4d7e3cd2e35de464e8b120d9f2c54bed73b1de1f86c8b642fed6ed87"
  end

  resource "ruamel.yaml" do
    url "https://files.pythonhosted.org/packages/c7/3b/ebda527b56beb90cb7652cb1c7e4f91f48649fbcd8d2eb2fb6e77cd3329b/ruamel_yaml-0.19.1.tar.gz"
    sha256 "53eb66cd27849eff968ebf8f0bf61f46cdac2da1d1f3576dd4ccee9b25c31993"
  end

  def install
    virtualenv_create(libexec, "python3")
    virtualenv_install_with_resources
  end

  test do
    false
  end
end
