class LiteralizerCli < Formula
  include Language::Python::Virtualenv

  desc "CLI for literalizer - convert data structures to native language literal syntax"
  homepage "None"
  url "https://files.pythonhosted.org/packages/c0/72/e25e9ee824a0b89ba81bae0b831feecc2f90ac0b31bacb7b368b976bd5ed/literalizer_cli-2026.3.23.5.tar.gz"
  sha256 "47bf09db31bab382547447c07c8397a741e06c233b69fabd82aab3ddb9f0c6c1"

  depends_on "python3"

  resource "beartype" do
    url "https://files.pythonhosted.org/packages/c7/94/1009e248bbfbab11397abca7193bea6626806be9a327d399810d523a07cb/beartype-0.22.9.tar.gz"
    sha256 "8f82b54aa723a2848a56008d18875f91c1db02c32ef6a62319a002e3e25a975f"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/3d/fa/656b739db8587d7b5dfa22e22ed02566950fbfbcdc20311993483657a5c0/click-8.3.1.tar.gz"
    sha256 "12ff4785d337a1bb490bb7e9c2b1ee5da3112e94a8622f26a6c77f5d2fc6842a"
  end

  resource "json-to-schema" do
    url "https://files.pythonhosted.org/packages/b3/23/58ac92794bbfe9081461f6d329ef7a083e9f8757ae98f138d8e3d10b7941/json_to_schema-1.3.0.tar.gz"
    sha256 "aaaf95da3abd01cd8630203b9c98dad067bbe351c3561981baa7ee73e5b6fa30"
  end

  resource "literalizer" do
    url "https://files.pythonhosted.org/packages/f6/59/0535209b6c856e7bb73d304ea38bae7664d09887cb2fc59a7ff5c46e96ce/literalizer-2026.3.22.1.tar.gz"
    sha256 "3c3294934d7adcc8c0041ed9b1da6045643ed9b7a74f2e5dcc538d58c461a27a"
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
