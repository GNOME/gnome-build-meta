kind: pip

sources:
- kind: tar
  url: https://files.pythonhosted.org/packages/62/cf/148028462ab88a71046ba0a30780357ae9e07125863ea9ca7808f1ea3798/ruamel.yaml-0.17.4.tar.gz

build-depends:
- freedesktop-sdk.bst:components/python3-pip.bst

depends:
- freedesktop-sdk.bst:components/python3.bst

runtime-depends:
- vm/buildstream/ruamel-yaml-clib.bst

variables:
  pip: python3 -m pip
