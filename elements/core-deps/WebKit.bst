kind: cmake
sources:
- kind: tar
  url: webkitgtk_org:webkitgtk-2.19.91.tar.xz
  ref: cc1ccc8522bc44e05bf2a7f25b486758298e9ebfbad09fd8a0b5909e45c35c93
depends:
- core-deps/at-spi2-core.bst
- core-deps/brotli.bst
- core-deps/geoclue.bst
- core-deps/gobject-introspection.bst
- core-deps/gst-libav.bst
- core-deps/gst-plugins-bad.bst
- core-deps/gst-plugins-base.bst
- core-deps/gst-plugins-good.bst
- core-deps/gtk+-3.bst
- core-deps/harfbuzz.bst
- core-deps/libnotify.bst
- core-deps/libsecret.bst
- core-deps/libsoup.bst
- core-deps/pango.bst
- core-deps/wayland.bst
- core-deps/woff2.bst
- base.bst
variables:
  cmake-local: -DPORT=GTK -DCMAKE_BUILD_TYPE=Release -DENABLE_PLUGIN_PROCESS_GTK2=OFF -DUSE_UPOWER=OFF
