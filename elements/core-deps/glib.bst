kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/glib/2.57/glib-2.57.1.tar.xz
  ref: d029e7c4536835f1f103472f7510332c28d58b9b7d6cd0e9f45c2653e670d9b4
depends:
- core-deps/gtk-doc.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-installed-tests --disable-libmount
public:
  bst:
    integration-commands:
    - glib-compile-schemas %{prefix}/share/glib-2.0/schemas
