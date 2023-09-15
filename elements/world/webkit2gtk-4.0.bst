kind: cmake

(@):
  - elements/sdk/webkitgtk.inc

depends:
  (>):
  - sdk/gtk+-3.bst
  - core-deps/libsoup-2.4.bst

variables:
  cmake-local: >-
    -DPORT=GTK
    -DUSE_AVIF=OFF
    -DUSE_SOUP2=ON
    -DENABLE_DOCUMENTATION=OFF
    -DENABLE_WEBDRIVER=OFF
    -DUSE_JPEGXL=OFF

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libjavascriptcoregtk-4.0.so'
        - '%{libdir}/libwebkit2gtk-4.0.so'
      webkit-debug:
      - '%{debugdir}'
      - '%{debugdir}/**'
