kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/aom.bst
- freedesktop-sdk.bst:components/dav1d.bst
- freedesktop-sdk.bst:components/jpeg.bst
- sdk/gdk-pixbuf.bst
- freedesktop-sdk.bst:components/libwebp.bst
- freedesktop-sdk.bst:components/svt-av1.bst

variables:
  cmake-local: >-
    -DBUILD_SHARED_LIBS=ON
    -DAVIF_BUILD_GDK_PIXBUF=OFF
    -DAVIF_CODEC_AOM=SYSTEM
    -DAVIF_CODEC_DAV1D=SYSTEM
    -DAVIF_CODEC_SVT=SYSTEM
    -DAVIF_LIBYUV=OFF
    -DAVIF_BUILD_EXAMPLES=OFF
    -DAVIF_BUILD_APPS=OFF
    -DAVIF_BUILD_TESTS=OFF
    -DAVIF_ENABLE_GTEST=OFF

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libavif.so'

sources:
- kind: git_repo
  url: github:AOMediaCodec/libavif.git
  track: v*
  exclude:
  - "*rc*"
  ref: v1.3.0-0-g1aadfad932c98c069a1204261b1856f81f3bc199
