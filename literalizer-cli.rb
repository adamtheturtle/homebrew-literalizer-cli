class LiteralizerCli < Formula
  include Language::Python::Virtualenv

  desc "CLI for literalizer - convert data structures to native language literal syntax"
  homepage "None"
  url "https://files.pythonhosted.org/packages/e4/99/b85ccd9cde76132abf5e4537aac8916771c49c178fbb84415aa003914a53/literalizer_cli-2026.4.6.tar.gz"
  sha256 "d651cfd04e1b6e6f1f234fb616ecc49d3e866b44d6e748238234d1b40f5a6e69"

  depends_on "python3"

  resource "beartype" do
    url "https://files.pythonhosted.org/packages/c7/94/1009e248bbfbab11397abca7193bea6626806be9a327d399810d523a07cb/beartype-0.22.9.tar.gz"
    sha256 "8f82b54aa723a2848a56008d18875f91c1db02c32ef6a62319a002e3e25a975f"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/bb/63/f9e1ea081ce35720d8b92acde70daaedace594dc93b693c869e0d5910718/click-8.3.3.tar.gz"
    sha256 "398329ad4837b2ff7cbe1dd166a4c0f8900c3ca3a218de04466f38f6497f18a2"
  end

  resource "literalizer" do
    url "https://files.pythonhosted.org/packages/73/3f/dc3db7939c6f7023b191247e31ef13ebaf38986c074f057c36b3a5c0bbf9/literalizer-2026.4.29.tar.gz"
    sha256 "95d1323be12e5d63022a41cea249ffb379ed8943d0bfc5a6f88e23de5f4e144e"
  end

  resource "pyhumps" do
    url "https://files.pythonhosted.org/packages/c4/83/fa6f8fb7accb21f39e8f2b6a18f76f6d90626bdb0a5e5448e5cc9b8ab014/pyhumps-3.8.0.tar.gz"
    sha256 "498026258f7ee1a8e447c2e28526c0bea9407f9a59c03260aee4bd6c04d681a3"
  end

  resource "pyjson5" do
    url "https://files.pythonhosted.org/packages/6e/d9/005aaaf5077cde946282b22da9404965477fb140fa6836b52d2e0955a391/pyjson5-2.0.0.tar.gz"
    sha256 "7ccc98586cf87dfeadfa76de8df4c9cb0c3d21d1b559e28812dd9633748d6e25"
  end

  resource "ruamel.yaml" do
    url "https://files.pythonhosted.org/packages/c7/3b/ebda527b56beb90cb7652cb1c7e4f91f48649fbcd8d2eb2fb6e77cd3329b/ruamel_yaml-0.19.1.tar.gz"
    sha256 "53eb66cd27849eff968ebf8f0bf61f46cdac2da1d1f3576dd4ccee9b25c31993"
  end

  resource "ruamel.yaml.clib" do
    url "https://files.pythonhosted.org/packages/ea/97/60fda20e2fb54b83a61ae14648b0817c8f5d84a3821e40bfbdae1437026a/ruamel_yaml_clib-0.2.15.tar.gz"
    sha256 "46e4cc8c43ef6a94885f72512094e482114a8a706d3c555a34ed4b0d20200600"
  end

  resource "tomlkit" do
    url "https://files.pythonhosted.org/packages/c3/af/14b24e41977adb296d6bd1fb59402cf7d60ce364f90c890bd2ec65c43b5a/tomlkit-0.14.0.tar.gz"
    sha256 "cf00efca415dbd57575befb1f6634c4f42d2d87dbba376128adb42c121b87064"
  end

  def install
    virtualenv_create(libexec, "python3")
    virtualenv_install_with_resources
  end

  test do
    false
  end
end
