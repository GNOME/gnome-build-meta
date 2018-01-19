kind: cmake
sources:
- kind: tar
  url: webkitgtk_org:webkitgtk-2.19.6.tar.xz
  ref: c97c87a0db3814f97812edeadc79c330affa51eb43dadbdc7a764b01db38d82b
depends:
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
- core/at-spi2-core.bst
- core/upower.bst
- base.bst
variables:
  cmake-local: -DPORT=GTK -DCMAKE_BUILD_TYPE=Release -DENABLE_PLUGIN_PROCESS_GTK2=OFF
