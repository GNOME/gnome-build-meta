kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- sdk/gdk-pixbuf.bst
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/aom.bst
- freedesktop-sdk.bst:components/dav1d.bst

sources:
- kind: tar
  url: github_files:AOMediaCodec/libavif/archive/refs/tags/v1.0.1.tar.gz
  ref: 398fe7039ce35db80fe7da8d116035924f2c02ea4a4aa9f4903df6699287599c

variables:
  cmake-local: >-
    -DAVIF_BUILD_GDK_PIXBUF=ON
    -DAVIF_CODEC_AOM=ON
    -DAVIF_CODEC_DAV1D=ON

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libavif.so'
