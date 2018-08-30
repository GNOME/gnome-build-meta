kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-online-accounts/3.29/gnome-online-accounts-3.29.91.tar.xz
  ref: a056e3b093fa88542793eb31c4aef7fcd08458febccecc5bcefe254c12744c03
depends:
- core-deps/librest.bst
- sdk/WebKitGTK+.bst
- sdk/gtk+-3.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/json-glib.bst
- sdk/libsecret.bst
- sdk/libsoup.bst
- filename: sdk/vala.bst
  type: build
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --disable-telepathy
