kind: distutils

sources:
- kind: tar
  url: https://files.pythonhosted.org/packages/5e/29/1bd649737e427a6bb850174293b4f2b72ab80dd49462142db9b81e1e5c7b/grpcio-1.30.0.tar.gz

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
