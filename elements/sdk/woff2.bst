kind: cmake

sources:
- kind: git_repo
  url: github:google/woff2.git
  track: '*.*.*'
  ref: v1.0.2-0-g1bccf208bca986e53a647dfe4811322adb06ecf8
- kind: patch
  path: patches/woff2/gcc15.patch

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/cmake.bst

depends:
- freedesktop-sdk.bst:components/brotli.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DCMAKE_POLICY_VERSION_MINIMUM=3.5

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libwoff2common.so'
        - '%{libdir}/libwoff2dec.so'
        - '%{libdir}/libwoff2enc.so'
