kind: pip

sources:
- kind: tar
  url: https://files.pythonhosted.org/packages/17/2f/f38332bf6ba751d1c8124ea70681d2b2326d69126d9058fbd9b4c434d268/ruamel.yaml-0.16.12.tar.gz

  ref: 076cc0bc34f1966d920a49f18b52b6ad559fbe656a0748e3535cf7b3f29ebf9e
build-depends:
- freedesktop-sdk.bst:components/python3-pip.bst

depends:
- freedesktop-sdk.bst:components/python3.bst

runtime-depends:
- vm/buildstream/ruamel-yaml-clib.bst

variables:
  pip: python3 -m pip
