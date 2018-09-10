kind: cmake
sources:
- kind: tar
  url: webkitgtk_org:webkitgtk-2.22.2.tar.xz
  ref: 345487d4d1896e711683f951d1e09387d3b90d7cf59295c0e634af7f515e99ba
- kind: local
  path: files/webkitgtk/toolchain.i386
- kind: local
  path: files/webkitgtk/toolchain.arm
depends:
- sdk/at-spi2-core.bst
- sdk/brotli.bst
- sdk/enchant-2.bst
- sdk/geoclue.bst
- sdk/gobject-introspection.bst
- sdk/gst-libav.bst
- sdk/gst-plugins-bad.bst
- sdk/gst-plugins-base.bst
- sdk/gst-plugins-good.bst
- sdk/gtk+-3.bst
- sdk/libnotify.bst
- sdk/libsecret.bst
- sdk/libsoup.bst
- sdk/pango.bst
- sdk/woff2.bst
- filename: desktop/hyphen.bst
  junction: freedesktop-sdk.bst
- filename: desktop/wayland.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-xt.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
variables:
  webkitgtk_toolchain: ''
  (?):
    - arch == "i386":
        webkitgtk_toolchain: -DCMAKE_TOOLCHAIN_FILE=toolchain.i386
    - arch == "arm":
        webkitgtk_toolchain: -DCMAKE_TOOLCHAIN_FILE=toolchain.arm
  cmake-local: -DCMAKE_BUILD_TYPE=Release -DPORT=GTK -DENABLE_PLUGIN_PROCESS_GTK2=OFF %{webkitgtk_toolchain}
environment:
  CFLAGS: '-g1'
  CXXFLAGS: '-g1'
  JOBS: '-j2'
