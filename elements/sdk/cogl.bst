kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/cogl
  track: cogl-1.22
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gst-plugins-base.bst
- sdk/gstreamer.bst
- sdk/gtk-doc.bst
- sdk/pango.bst
- sdk/wayland.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-cogl-gst --disable-maintainer-flags --enable-xlib-egl-platform
    --enable-wayland-egl-platform --enable-wayland-egl-server --enable-kms-egl-platform
