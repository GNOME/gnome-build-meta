kind: cmake

(@):
  - elements/sdk/webkitgtk.inc

depends:
  (>):
  - sdk/gtk.bst
  - sdk/libsoup.bst

variables:
  cmake-local: >-
    -DPORT=GTK
    -DUSE_GTK4=ON
    -DDEBUG_FISSION=OFF

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libjavascriptcoregtk-6.0.so'
        - '%{libdir}/libwebkitgtk-6.0.so'
      webkit-debug:
      - '%{debugdir}'
      - '%{debugdir}/**'
