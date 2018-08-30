kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/libgxps/0.3/libgxps-0.3.0.tar.xz
  ref: 412b1343bd31fee41f7204c47514d34c563ae34dafa4cc710897366bd6cd0fae
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
