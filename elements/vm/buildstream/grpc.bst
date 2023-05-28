kind: cmake

sources:
# There is no vendored source, so git_tag is easier to use
- kind: git_tag
  url: github:grpc/grpc.git
  track: v1.53.0
  submodules:
    third_party/abseil-cpp:
      checkout: true
      url: github:abseil/abseil-cpp.git
    third_party/re2:
      checkout: true
      url: github:google/re2.git
    third_party/opencensus-proto:
      checkout: true
      url: github:census-instrumentation/opencensus-proto.git
  ref: v1.53.0-0-g358bfb581feeda5bf17dd3b96da1074d84a6ef8d

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- vm/buildstream/c-ares.bst
- vm/buildstream/gflags.bst
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/protobuf.bst
- freedesktop-sdk.bst:components/util-linux.bst

variables:
  cmake-local: >-
    -DgRPC_SSL_PROVIDER=package
    -DgRPC_PROTOBUF_PROVIDER=package
    -DgRPC_ZLIB_PROVIDER=package
    -DgRPC_GFLAGS_PROVIDER=package
    -DgRPC_CARES_PROVIDER=package
    -DgRPC_INSTALL_LIBDIR="%{lib}"
    -DCMAKE_CXX_STANDARD=14
