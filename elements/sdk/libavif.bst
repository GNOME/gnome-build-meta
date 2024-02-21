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
  url: github_files:AOMediaCodec/libavif/archive/refs/tags/v1.0.4.tar.gz
  ref: dc56708c83a4b934a8af2b78f67f866ba2fb568605c7cf94312acf51ee57d146

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
