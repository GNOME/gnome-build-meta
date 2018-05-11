kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/cogl/1.22/cogl-1.22.2.tar.xz
  ref: 39a718cdb64ea45225a7e94f88dddec1869ab37a21b339ad058a9d898782c00d
depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/gst-plugins-base.bst
- core-deps/gstreamer.bst
- core-deps/gtk-doc.bst
- core-deps/pango.bst
- core-deps/wayland.bst
- base.bst
variables:
  conf-local: --enable-cogl-gst --disable-maintainer-flags --enable-xlib-egl-platform
    --enable-wayland-egl-platform --enable-wayland-egl-server --enable-kms-egl-platform
