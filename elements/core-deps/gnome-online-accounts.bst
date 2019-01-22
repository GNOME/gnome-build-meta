kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-online-accounts/3.30/gnome-online-accounts-3.30.1.tar.xz
  ref: 7e968a325e959f0b2419bed5a4c5b6d3a9327aceebd72f4fb01478c78ce85b41
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
