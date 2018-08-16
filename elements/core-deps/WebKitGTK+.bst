kind: cmake
sources:
- kind: tar
  url: webkitgtk_org:webkitgtk-2.21.91.tar.xz
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
- core-deps/libnotify.bst
- core-deps/libsecret.bst
- core-deps/libsoup.bst
- core-deps/pango.bst
- core-deps/woff2.bst
- filename: desktop/wayland.bst
  junction: freedesktop-sdk.bst
- filename: desktop/hyphen.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-xt.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  cmake-local: -DPORT=GTK -DENABLE_PLUGIN_PROCESS_GTK2=OFF
