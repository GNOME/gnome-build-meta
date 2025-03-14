kind: cmake

(@):
  - elements/sdk/webkitgtk.inc

depends:
  (>):
  - sdk/gtk+-3.bst
  - sdk/libsoup.bst

variables:
  cmake-local: >-
    -DPORT=GTK
    -DENABLE_SPEECH_SYNTHESIS=OFF
    -DENABLE_WEBDRIVER=OFF
    -DUSE_LIBBACKTRACE=OFF
    -DUSE_GTK4=OFF

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libjavascriptcoregtk-4.1.so'
        - '%{libdir}/libwebkit2gtk-4.1.so'
      webkit-debug:
      - '%{debugdir}'
      - '%{debugdir}/**'
