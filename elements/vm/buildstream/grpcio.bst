kind: pip

sources:
- kind: tar
  url: pypi:a0/d6/d04c6550debe23e2eaef0d9c4adccbb6e20d8cce6da40ae989fe8836e287/grpcio-1.37.1.tar.gz

build-depends:
- freedesktop-sdk.bst:components/cython.bst
- freedesktop-sdk.bst:components/python3-pip.bst

depends:
- core-deps/protobuf.bst
- freedesktop-sdk.bst:components/python3-six.bst
- freedesktop-sdk.bst:components/python3.bst

environment:
  GRPC_PYTHON_BUILD_SYSTEM_OPENSSL: 'true'
  GRPC_PYTHON_BUILD_WITH_CYTHON: '1'

config:
  create-dev-shm: true
