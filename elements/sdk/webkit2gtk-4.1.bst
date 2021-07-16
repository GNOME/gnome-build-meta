kind: cmake

(@):
  - elements/sdk/webkitgtk.inc

depends:
  (>):
  - sdk/libsoup.bst

variables:
  # FIXME: Enable gamepad support via libmanette once freedesktop-sdk's gudev is built with gobject-introspection support
  cmake-local: >-
    -DPORT=GTK -DENABLE_GAMEPAD=OFF
    %{webkitgtk_toolchain}
    %{webkitgtk_arch_options}

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libjavascriptcoregtk-4.1.so'
        - '%{libdir}/libwebkit2gtk-4.1.so'
