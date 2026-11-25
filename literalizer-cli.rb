class LiteralizerCli < Formula
  include Language::Python::Virtualenv

  desc "CLI for literalizer - convert data structures to native language literal syntax"
  homepage "None"
  url "https://files.pythonhosted.org/packages/87/ff/5c64a44b523063d5a454edc03113da1804cad18bef52d39d37c908e23a3e/literalizer_cli-2026.11.25.1.tar.gz"
  sha256 "7a78eff9cbdeb73f69c3f80fdf624f8be8835e38fe56867c6a363f8f88eac4a2"

  depends_on "python3"

  resource "beartype" do
    url "https://files.pythonhosted.org/packages/79/34/c0cfdaee9c796c8381439fed0fcab62810753b8b0adb1ec88fa7f41eaa5d/beartype-0.23.1.tar.gz"
    sha256 "8b805f246b32931c74f2b321ea0939fe5bb2ff43c12a3eff19cc4c854b832e1d"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/45/37/edbf1b0707709013c0cf2e8317e03d97ed29bf4cac709fe328904ae92a38/click-8.5.1.tar.gz"
    sha256 "9bbfada76703fd1d784b83eea012e3e8c6a001a876543ef104fa56aaaeb072b4"
  end

  resource "json5-document" do
    url "https://files.pythonhosted.org/packages/7c/e4/ed48d6868fb633cea8eb2422926f4b0a7600d996e7a9ad8ad317af4c22db/json5_document-2026.10.15.1.tar.gz"
    sha256 "4775b2013c744a412c18ce9b40969deeb6b2e7df514f8c7d5f374673a9ba4922"
  end

  resource "jsonc-document" do
    url "https://files.pythonhosted.org/packages/71/8c/bb4eee8cf2e918706c56b0cd3cac51b812f3202408427aefc3219a0f6705/jsonc_document-2026.10.15.tar.gz"
    sha256 "fbe17fa2ae2b5f5058f07e6480b6530f656927e0ec492c009bc5af875e7e07f7"
  end

  resource "literalizer" do
    url "https://files.pythonhosted.org/packages/99/fd/2bd9b0a3dabdf93af69120e9c162e76108ae5ce5ef9b610585d1779e461c/literalizer-2026.11.25.2.tar.gz"
    sha256 "19c3401a05f5216940cabe8e4c928d727226a3d8c9bf04c091302498ae1425ae"
  end

  resource "pyhumps" do
    url "https://files.pythonhosted.org/packages/c4/83/fa6f8fb7accb21f39e8f2b6a18f76f6d90626bdb0a5e5448e5cc9b8ab014/pyhumps-3.8.0.tar.gz"
    sha256 "498026258f7ee1a8e447c2e28526c0bea9407f9a59c03260aee4bd6c04d681a3"
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
    url "https://files.pythonhosted.org/packages/08/72/fc01563df95c189a9f65850096bdc205bc2fe37da6c740cd64afaf18d07e/tomlkit-0.15.2.tar.gz"
    sha256 "83e32755ba1d20d9340bd069ee97e9f6232ba2346b63ffcba425de01f7e327a6"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/f6/cc/6253133b5bb138fc3306cebfbda2c520f545d36b5be2c7255cc528bb45d6/typing_extensions-4.16.0.tar.gz"
    sha256 "dc983d19a509c94dba722ee6abd33940f7c05a89e243c47e907eb4db6f1a43e5"
  end

  def install
    virtualenv_create(libexec, "python3")
    virtualenv_install_with_resources
  end

  test do
    false
  end
end
