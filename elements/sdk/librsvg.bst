kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/librsvg/2.44/librsvg-2.44.2.tar.xz
  ref: 4eec96cc53ed499417dac3db9b4604f80a76f377f8f791641c458df1d7a3631f
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
  conf-local: --enable-vala
environment:
  PATH: /usr/bin:/usr/lib/sdk/rust/bin
