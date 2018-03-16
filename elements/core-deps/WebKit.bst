kind: cmake
sources:
- kind: tar
  url: webkitgtk_org:webkitgtk-2.20.0.tar.xz
  ref: 57f640f720bd9a8a7207f3321cf803a15c2f207b4e7b75ff1be17bc1eeb00a3c
  etag: '"fd9014-567342b74d8f6"'
depends:
- core-deps/at-spi2-core.bst
- core-deps/brotli.bst
- core-deps/enchant-2.bst
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
