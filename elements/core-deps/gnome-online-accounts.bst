kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-online-accounts/3.30/gnome-online-accounts-3.30.0.tar.xz
  ref: 27d9d88942aa02a1f8d003dfe515483d8483f216ba1e297a8ef67a42cf4bcfc3
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
