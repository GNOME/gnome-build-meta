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
    %{webkitgtk_toolchain}

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libjavascriptcoregtk-5.0.so'
        - '%{libdir}/libwebkit2gtk-5.0.so'
