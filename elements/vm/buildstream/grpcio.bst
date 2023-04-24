kind: pip

sources:
- kind: tar
  url: pypi:ef/e4/5c717f3c6c65b7c5ff2542ca25d6c2ce0f99d9ee9119620c6e2325a6da79/grpcio-1.54.0.tar.gz
  ref: eb0807323572642ab73fd86fe53d88d843ce617dd1ddf430351ad0759809a0ae

depends:
- freedesktop-sdk.bst:components/python3.bst
- vm/buildstream/c-ares.bst

build-depends:
- freedesktop-sdk.bst:components/cython.bst
- freedesktop-sdk.bst:components/python3-pip.bst
- freedesktop-sdk.bst:components/python3-wheel.bst

runtime-depends:
- freedesktop-sdk.bst:components/python3-six.bst
- freedesktop-sdk.bst:components/protobuf.bst

environment:
  GRPC_PYTHON_BUILD_SYSTEM_OPENSSL: "true"
  GRPC_PYTHON_BUILD_SYSTEM_ZLIB: "true"
  GRPC_PYTHON_BUILD_SYSTEM_CARES: "true"
  GRPC_PYTHON_BUILD_WITH_CYTHON: "1"
