depends:
- core-deps/gtk-doc.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: autotools
public:
  bst:
    integration-commands:
    - glib-compile-schemas %{prefix}/share/glib-2.0/schemas
sources:
- kind: tar
  ref: e19f795baabb52651ddea90bb5dc8f696939e15290c3cb7cfa684d4e1628c1a8
  url: https://download.gnome.org/sources/glib/2.57/glib-2.57.2.tar.xz
variables:
  conf-local: --enable-installed-tests --disable-libmount
