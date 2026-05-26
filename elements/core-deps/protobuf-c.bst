kind: autotools

sources:
- kind: git_repo
  url: github:protobuf-c/protobuf-c.git
  track: 'v*.*.*'
  ref: v1.5.2-0-g4719fdd7760624388c2c5b9d6759eb6a47490626
- kind: patch
  path: patches/protobuf-c/compatibility_with_protobuf_34.x.patch

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/protobuf.bst

environment:
  # Work around an issue in protobuf-c's configure.ac:
  #
  #   * Recent versions of the abseil library use C++20 language features
  #   * protobuf-c/configure.ac calls AX_CXX_COMPILE_STDCXX(17, ...) which opts
  #     into C++17 only
  #   * This leads to a configure error that says "Missing required protobuf
  #     header", but is actually because compile errors in the abseil headers.
  #   * Patching protobuf-c to call AX_CXX_COMPILE_STDCXX(20, ...) fails
  #     because the last stable autoconf-archive release doesn't support
  #     C++20.
  #
  CXXFLAGS: "--std=c++20"

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{bindir}/*'
