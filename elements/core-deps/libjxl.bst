kind: cmake

sources:
- kind: git_tag
  url: github:libjxl/libjxl.git
  track: v0.6.1
  submodules:
    third_party/lodepng:
      url: github:lvandeve/lodepng.git
      checkout: true
    third_party/skcms:
      url: skia:skcms.git
      checkout: true

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- core-deps/highway.bst
- sdk/gdk-pixbuf.bst
- freedesktop-sdk.bst:components/brotli.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DJPEGXL_ENABLE_SJPEG=OFF
    -DJPEGXL_ENABLE_PLUGINS=ON
