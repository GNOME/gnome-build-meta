kind: distutils

sources:
- kind: tar
  url: https://files.pythonhosted.org/packages/0c/c5/f38a7ec5966b2d3b38488494213deaeec421aeef0ba6559e15f58286416c/grpcio-1.37.0.tar.gz

depends:
- freedesktop-sdk.bst:components/python3.bst

build-depends:
- freedesktop-sdk.bst:components/cython.bst
- freedesktop-sdk.bst:components/python3-setuptools.bst

runtime-depends:
- freedesktop-sdk.bst:components/python3-six.bst
- vm/buildstream/protobuf.bst

environment:
  GRPC_PYTHON_BUILD_SYSTEM_OPENSSL: "true"
  GRPC_PYTHON_BUILD_WITH_CYTHON: "1"
