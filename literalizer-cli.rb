class LiteralizerCli < Formula
  include Language::Python::Virtualenv

  desc "CLI for literalizer - convert data structures to native language literal syntax"
  homepage "None"
  url "https://files.pythonhosted.org/packages/ca/1a/aa8df325f252886125741870ace7ea087b6eba4e399132b3782bc6d16a59/literalizer_cli-2026.3.23.7.tar.gz"
  sha256 "4eef56e9aff782cc06d31045c0b16731e2b50885d0dc029b6e73c3dbf08f22b9"

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
    url "https://files.pythonhosted.org/packages/be/ff/cf895ab0b7d7a9d519c3fac8912d1c74489c9e12c0be61382e2b0b3d3f62/literalizer-2026.3.25.tar.gz"
    sha256 "943319fd9f83b064b651d77fad47a7ed27722c2800f612864f74b03aca475ef6"
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
