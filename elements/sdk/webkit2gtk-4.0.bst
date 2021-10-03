kind: cmake

(@):
  - elements/sdk/webkitgtk.inc

depends:
  (>):
  - sdk/gtk+-3.bst
  - sdk/libsoup-2.4.bst

variables:
  cmake-local: >-
    -DPORT=GTK
    -DENABLE_GTKDOC=ON
    -DUSE_SOUP2=ON
    -DENABLE_WEBDRIVER=OFF
    %{webkitgtk_toolchain}

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libjavascriptcoregtk-4.0.so'
        - '%{libdir}/libwebkit2gtk-4.0.so'
