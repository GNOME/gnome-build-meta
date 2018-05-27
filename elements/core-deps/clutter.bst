kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:clutter
  track: master
depends:
- core-deps/atk.bst
- core-deps/cogl.bst
- core-deps/gdk-pixbuf.bst
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/json-glib.bst
- core-deps/libgudev.bst
- core-deps/libinput.bst
- core-deps/wayland.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-installed-tests --disable-maintainer-flags --enable-egl-backend
    --enable-evdev-input --enable-wayland-backend --enable-wayland-compositor
