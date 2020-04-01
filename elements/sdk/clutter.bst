kind: autotools
sources:
- kind: tar
  url: gnome_downloads:clutter/1.26/clutter-1.26.4.tar.xz
  ref: af27bf89e2b12ac1ac8c11e8f685cea9e75e346f41a561253e44f5cc3757d815
depends:
- sdk/atk.bst
- sdk/cogl.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/json-glib.bst
- filename: components/libxkbcommon.bst
  junction: freedesktop-sdk.bst
- filename: components/wayland.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-installed-tests --disable-maintainer-flags --enable-egl-backend
    --enable-evdev-input --enable-wayland-backend --enable-wayland-compositor --enable-gdk-backend
