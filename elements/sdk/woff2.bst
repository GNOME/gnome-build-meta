kind: cmake
sources:
- kind: tar
  url: github_files:google/woff2/archive/v1.0.2.tar.gz
  ref: add272bb09e6384a4833ffca4896350fdb16e0ca22df68c0384773c67a175594
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
depends:
- freedesktop-sdk.bst:components/brotli.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libwoff2common.so'
        - '%{libdir}/libwoff2dec.so'
        - '%{libdir}/libwoff2enc.so'
