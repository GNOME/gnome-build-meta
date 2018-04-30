kind: autotools
sources:
- kind: git
  url: git_gnome_org:clutter
  track: master
depends:
- sdk/atk.bst
- sdk/cogl.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/json-glib.bst
- sdk/libgudev.bst
- sdk/libinput.bst
- sdk/wayland.bst
- base.bst
variables:
  conf-local: --enable-installed-tests --disable-maintainer-flags --enable-egl-backend
    --enable-evdev-input --enable-wayland-backend --enable-wayland-compositor
