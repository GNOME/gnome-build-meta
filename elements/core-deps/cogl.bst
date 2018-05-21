kind: autotools
sources:
- kind: git
  url: git_gnome_org:cogl
  track: cogl-1.22
depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/gst-plugins-base.bst
- core-deps/gstreamer.bst
- core-deps/gtk-doc.bst
- core-deps/pango.bst
- core-deps/wayland.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-cogl-gst --disable-maintainer-flags --enable-xlib-egl-platform
    --enable-wayland-egl-platform --enable-wayland-egl-server --enable-kms-egl-platform
