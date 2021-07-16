kind: cmake

(@):
  - elements/sdk/webkitgtk.inc

depends:
  (>):
  - sdk/libsoup-2.4.bst

variables:
  # FIXME: Enable gamepad support via libmanette once freedesktop-sdk's gudev is built with gobject-introspection support
  cmake-local: >-
    -DPORT=GTK -DENABLE_GAMEPAD=OFF -DENABLE_WEBDRIVER=OFF -DUSE_SOUP2=ON
    %{webkitgtk_toolchain}
    %{webkitgtk_arch_options}

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libjavascriptcoregtk-4.0.so'
        - '%{libdir}/libwebkit2gtk-4.0.so'
