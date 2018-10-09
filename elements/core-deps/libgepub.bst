kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/libgepub/0.6/libgepub-0.6.0.tar.xz
depends:
- sdk/WebKitGTK+.bst
- sdk/glib.bst
- sdk/libsoup.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
