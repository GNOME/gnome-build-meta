kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/cogl/1.22/cogl-1.22.2.tar.xz
  ref: 39a718cdb64ea45225a7e94f88dddec1869ab37a21b339ad058a9d898782c00d
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gst-plugins-base.bst
- sdk/gstreamer.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/pango.bst
- filename: desktop/wayland.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
variables:
  conf-local: --enable-cogl-gst --disable-maintainer-flags --enable-xlib-egl-platform
    --enable-wayland-egl-platform --enable-wayland-egl-server --enable-kms-egl-platform
