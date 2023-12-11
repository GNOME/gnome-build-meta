kind: cmake

sources:
- kind: tar
  url: github_files:libjxl/libjxl/archive/refs/tags/v0.8.2.tar.gz
  ref: c70916fb3ed43784eb840f82f05d390053a558e2da106e40863919238fa7b420
- kind: patch_queue
  path: patches/libjxl/

build-depends:
- sdk-deps/highway.bst
- freedesktop-sdk.bst:components/asciidoc.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- sdk/gdk-pixbuf.bst
- freedesktop-sdk.bst:bootstrap/zlib.bst
- freedesktop-sdk.bst:components/brotli.bst
- freedesktop-sdk.bst:components/jpeg.bst
- freedesktop-sdk.bst:components/lcms.bst
- freedesktop-sdk.bst:components/libpng.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DJPEGXL_BUNDLE_LIBPNG=OFF
    -DJPEGXL_ENABLE_BENCHMARK=OFF
    -DJPEGXL_ENABLE_COVERAGE=OFF
    -DJPEGXL_ENABLE_DEVTOOLS=OFF
    -DJPEGXL_ENABLE_EXAMPLES=OFF
    -DJPEGXL_ENABLE_FUZZERS=OFF
    -DJPEGXL_ENABLE_JPEGLI=OFF
    -DJPEGXL_ENABLE_OPENEXR=OFF
    -DJPEGXL_ENABLE_PLUGINS=ON
    -DJPEGXL_ENABLE_PLUGIN_GIMP210=OFF
    -DJPEGXL_ENABLE_SJPEG=OFF
    -DJPEGXL_ENABLE_SKCMS=OFF
    -DJPEGXL_ENABLE_TCMALLOC=OFF
    -DJPEGXL_ENABLE_TOOLS=OFF
    -DJPEGXL_ENABLE_VIEWERS=OFF
    -DJPEGXL_FORCE_SYSTEM_BROTLI=ON
    -DJPEGXL_FORCE_SYSTEM_HWY=ON
    -DJPEGXL_STATIC=OFF
    -DJPEGXL_TEST_TOOLS=OFF
    -DJPEGXL_WARNINGS_AS_ERRORS=OFF

config:
  install-commands:
    (>):
      - rm %{install-root}%{libdir}/libjxl*.a
