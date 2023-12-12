kind: cmake

(@):
  - elements/sdk/webkitgtk.inc

depends:
  (>):
  - sdk/gtk+-3.bst
  - world/libsoup-2.4.bst

variables:
  cmake-local: >-
    -DPORT=GTK
    -DUSE_GTK4=OFF
    -DUSE_SOUP2=ON
    -DUSE_LIBBACKTRACE=OFF
    -DENABLE_WEBDRIVER=OFF

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
