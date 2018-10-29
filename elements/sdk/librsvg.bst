kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/librsvg/2.44/librsvg-2.44.8.tar.xz
  ref: aafd1c651b293bc09305ec9ae558e4fbcd4b9be6e7e27a003d48324af993b23e
depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- filename: sdk/gnome-common.bst
  type: build
- filename: sdk/gtk-doc.bst
  type: build
- sdk/gobject-introspection.bst
- sdk/libcroco.bst
- sdk/pango.bst
- filename: sdk/vala.bst
  type: build
- filename: extensions/rust/cargo.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: extensions/rust/rust.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
variables:
  conf-local: |
    --enable-gtk-doc \
    --enable-vala
environment:
  PATH: /usr/bin:/usr/lib/sdk/rust/bin
