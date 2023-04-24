kind: pip

sources:
- kind: tar
  url: pypi:d5/31/a3e6411947eb7a4f1c669f887e9e47d61a68f9d117f10c3c620296694a0b/ruamel.yaml.clib-0.2.7.tar.gz
  ref: 1f08fd5a2bea9c4180db71678e850b995d2a5f4537be0e94557668cf0f5f9497

build-depends:
- freedesktop-sdk.bst:components/python3-pip.bst

depends:
- freedesktop-sdk.bst:components/python3.bst
