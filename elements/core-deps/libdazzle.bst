kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/libdazzle/3.29/libdazzle-3.29.92.tar.xz
  ref: 801f21c3a963414ba635822e89211a5b9e75302a7025b14a78f7fb2e8af94a20
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
