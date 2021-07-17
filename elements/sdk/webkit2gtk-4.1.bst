kind: cmake

(@):
  - elements/sdk/webkitgtk.inc

depends:
  (>):
  - sdk/libsoup.bst

variables:
  cmake-local: >-
    -DPORT=GTK
    %{webkitgtk_toolchain}
    %{webkitgtk_arch_options}

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libjavascriptcoregtk-4.1.so'
        - '%{libdir}/libwebkit2gtk-4.1.so'
