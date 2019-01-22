kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/libsecret/0.18/libsecret-0.18.7.tar.xz
  ref: 0d66fe1fc4561b3e046ee281d7c5a703a9baac88a8c4fb42ebc739d31dabd487
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: sdk/vala.bst
  type: build
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
