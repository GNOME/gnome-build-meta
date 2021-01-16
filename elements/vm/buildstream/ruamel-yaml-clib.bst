kind: pip

sources:
- kind: tar
  url: https://files.pythonhosted.org/packages/92/28/612085de3fae9f82d62d80255d9f4cf05b1b341db1e180adcf28c1bf748d/ruamel.yaml.clib-0.2.0.tar.gz

  ref: b66832ea8077d9b3f6e311c4a53d06273db5dc2db6e8a908550f3c14d67e718c
build-depends:
- freedesktop-sdk.bst:components/python3-pip.bst

depends:
- freedesktop-sdk.bst:components/python3.bst

variables:
  pip: python3 -m pip
