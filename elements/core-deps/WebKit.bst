kind: cmake
sources:
- kind: tar
  url: webkitgtk_org:webkitgtk-2.20.5.tar.xz
  ref: 15c0f8d26e9605afe0948d161ba5fd82efee8eda2debd409fd40a440ac3af990
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
  cmake-local: -DPORT=GTK -DENABLE_PLUGIN_PROCESS_GTK2=OFF
