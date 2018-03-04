kind: cmake
sources:
- kind: tar
# Reminder: remove -DUSE_UPOWER=OFF when upgrading to 2.19.92
# https://trac.webkit.org/changeset/228888/webkit
  url: webkitgtk_org:webkitgtk-2.19.91.tar.xz
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
  cmake-local: -DPORT=GTK -DENABLE_PLUGIN_PROCESS_GTK2=OFF -DUSE_UPOWER=OFF
