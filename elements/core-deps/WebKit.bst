kind: cmake
sources:
- kind: tar
  url: webkitgtk_org:webkitgtk-2.20.4.tar.xz
  ref: cc7dd15505c4f8a75d96deae148a82d7cc9034c7f3cc8a1fe4f969dddd92ae32
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
