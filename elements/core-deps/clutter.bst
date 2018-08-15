depends:
- core-deps/atk.bst
- core-deps/cogl.bst
- core-deps/gdk-pixbuf.bst
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/json-glib.bst
- core-deps/libgudev.bst
- core-deps/libinput.bst
- filename: desktop/wayland.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: autotools
sources:
- kind: tar
  ref: e7233314983055e9018f94f56882e29e7fc34d8d35de030789fdcd9b2d0e2e56
  url: https://download.gnome.org/sources/clutter/1.26/clutter-1.26.2.tar.xz
variables:
  conf-local: --enable-installed-tests --disable-maintainer-flags --enable-egl-backend
    --enable-evdev-input --enable-wayland-backend --enable-wayland-compositor
