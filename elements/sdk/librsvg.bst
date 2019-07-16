kind: autotools
sources:
- kind: tar
  url: gnome_downloads:librsvg/2.45/librsvg-2.45.92.tar.xz
depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/gobject-introspection.bst
- sdk/libcroco.bst
- sdk/pango.bst
- filename: sdk/vala.bst
  type: build
- filename: desktop/cairo.bst
  junction: freedesktop-sdk.bst
- filename: extensions/rust/rust.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: |
    --disable-gtk-doc \
    --enable-vala
environment:
  PATH: /usr/bin:/usr/lib/sdk/rust/bin
