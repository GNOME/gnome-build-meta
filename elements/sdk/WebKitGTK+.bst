kind: cmake
sources:
- kind: tar
  url: webkitgtk_org:webkitgtk-2.21.1.tar.xz
depends:
- sdk/at-spi2-core.bst
- sdk/brotli.bst
- sdk/enchant-2.bst
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
- sdk/wayland.bst
- sdk/woff2.bst
- base.bst
variables:
  cmake-local: -DPORT=GTK -DENABLE_PLUGIN_PROCESS_GTK2=OFF
