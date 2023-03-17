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
    -DENABLE_WEBDRIVER=OFF

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
