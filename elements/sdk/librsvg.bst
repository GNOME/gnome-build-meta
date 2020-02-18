kind: autotools
sources:
- kind: tar
  url: gnome_downloads:librsvg/2.46/librsvg-2.46.4.tar.xz
  ref: b45b9ee3b64c58baaf800bcdff5fcd04d79930dba4c56e46e0d3b0aead40cc29
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
- filename: components/cairo.bst
  junction: freedesktop-sdk.bst
- filename: extensions/rust/rust.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --disable-gtk-doc --enable-vala
environment:
  PATH: /usr/bin:/usr/lib/sdk/rust/bin
